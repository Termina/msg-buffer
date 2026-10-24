import assert from 'node:assert/strict';
import {execFileSync,spawnSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:32e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=p=>execFileSync('git',['hash-object',p],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});
assert.equal(run('-v').trim(),'0.30.1');
assert.equal(blob('calcit.cirru'),'fe31cd96277f9f4c22140266ec342ab9897ecdb5');
assert.equal(blob('config/calcit-quality.cirru'),'331089d1a3b47d37332f79cf92e54c5a4035c52e');
writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))), expected=structuredClone(before),ops=[],types=[],counts={};let adapters=0,unitCallbacks=0,returnHints=0;
assert.equal(before.length,139);assert.equal(before.reduce((n,d)=>n+d.tests.length,0),8);assert.equal(before.reduce((n,d)=>n+d.examples.length,0),1);
const config=q('config'),namespaces=q('ns').namespaces.map(n=>q('ns',n));
const contracts=["'String",":: 'List 'Number",":: 'Map 'Tag 'Dynamic"].map(t=>q('type',t));
writeFileSync('acceptance/method-contracts.json',JSON.stringify(contracts,null,2));
assert.ok(contracts[0].methods.some(m=>m.name==='.len'&&m.status==='proven'));
assert.ok(contracts[1].methods.some(m=>m.name==='.foldl'));
assert.ok(contracts[2].methods.some(m=>m.name==='.merge'));
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return x;
  if(x[0]==='.show'){
    assert.equal(id,'app.comp.container/comp-container');assert.equal(x[2],'d!');
    const p='@'+[...path,2].join('.');assert.equal(JSON.parse(run('tree','show',id,'--path',p,'--format','json')).tree,'d!');
    const adapter=['fn',['op'],['hint-fn',['{}',[':args',['[]',"'Enum"]],[':return',"'Unit"]]],['d!','op'],'&unit'];
    ops.push(['tree','replace',id,'--path',p,'--input-format','json-ast','--code',JSON.stringify(adapter),'--expect','quote d!']);x[2]=adapter;adapters++;
    if(['api-key-plugin','reply-plugin'].includes(x[1])){
      const cb=x[3];assert.equal(cb[0],'fn');const cp='@'+[...path,3].join('.');assert.deepEqual(JSON.parse(run('tree','show',id,'--path',cp,'--format','json')).tree,cb);
      cb.push('&unit');ops.push(['tree','replace',id,'--path',cp,'--input-format','json-ast','--code',JSON.stringify(cb)]);unitCallbacks++;
    }
  }
  if(id==='app.comp.container/comp-sessions-modal'&&JSON.stringify(path)===JSON.stringify([3,1,0,1,3,2])){
    assert.deepEqual(x,['hint-fn',['{}',[':args',['[]',"'Number","'app.schema/ChatSession"]]]]);
    const p='@'+path.join('.');assert.deepEqual(JSON.parse(run('tree','show',id,'--path',p,'--format','json')).tree,x);
    x[1].push([':return',"'Number"]);ops.push(['tree','replace',id,'--path',p,'--input-format','json-ast','--code',JSON.stringify(x)]);returnHints++;
  }
  const replacement={count:'.len',foldl:'.foldl',merge:'.merge'}[x[0]];
  if(replacement){
    const old=x[0],receiver=x[1];counts[old]=(counts[old]||0)+1;
    if(old==='count'){
      assert.ok(['text','messages','sessions','new-archives','first-msg','lines'].includes(receiver)||JSON.stringify(receiver)===JSON.stringify(['or',[':messages','session'],['[]']]));
    }else if(old==='foldl'){
      assert.equal(id,'app.comp.container/comp-sessions-modal');assert.equal(receiver,'sessions');assert.equal(x[2],'0');
    }else{
      assert.equal(id,'app.updater/updater');assert.deepEqual(x.slice(1),[['decode-map-as','state',['::',"'Map","'Tag","'Dynamic"]],['decode-map-as','changes',['::',"'Map","'Tag","'Dynamic"]]]);
    }
    const r=spawnSync('calcit',['query','type-at',id,'--path','@'+[...path,1].join('.'),'--format','json'],{encoding:'utf8',maxBuffer:32e6});
    assert.equal(r.status,0);const evidence=JSON.parse(r.stdout);assert.deepEqual(evidence.diagnostics,[]);assert.ok(evidence.data.inferred_type);types.push({id,path,tree:structuredClone(x),evidence,stderr:r.stderr});
    const p='@'+[...path,0].join('.');assert.equal(JSON.parse(run('tree','show',id,'--path',p,'--format','json')).tree,old);
    ops.push(['tree','replace',id,'--path',p,'--input-format','json-ast','--code',JSON.stringify(replacement),'--expect','quote '+old]);x[0]=replacement;
  }
  return x.map((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected){assert.deepEqual(q('def',d.id),before.find(x=>x.id===d.id));d.code=walk(d.code,[],d.id);}
assert.deepEqual(counts,{count:17,foldl:1,merge:1});assert.equal(adapters,6);assert.equal(unitCallbacks,2);assert.equal(returnHints,1);assert.equal(ops.length,28);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));writeFileSync('acceptance/receiver-types.json',JSON.stringify(types,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const actual=[];for(const ns of namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)actual.push(q('def',`${ns.namespace}/${n}`));}
assert.deepEqual(actual,expected);assert.deepEqual(q('config'),config);assert.deepEqual(q('ns').namespaces.map(ns=>q('ns',ns)),namespaces);
assert.equal(blob('config/calcit-quality.cirru'),'331089d1a3b47d37332f79cf92e54c5a4035c52e');
writeFileSync('acceptance/after.json',JSON.stringify(actual,null,2));writeFileSync('acceptance/config.json',JSON.stringify(config,null,2));writeFileSync('acceptance/namespaces.json',JSON.stringify(namespaces,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob('calcit.cirru'));
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:139,tests:8,examples:1,operations:28,counts,adapters,unitCallbacks,returnHints,preserved:'All original tests/examples/definition-schema/metadata/FFI/collectionoperands/reducerinitial/HUD/baseline/workflow/npm/lock unchanged. Six Enum-to-Unit adapters forward one operation to original multi-arity Respo dispatch; two prompt effect callbacks explicitly return Unit after starting original effects; sum callback declares checked Number return. No casts or Dynamic added, no model calls or extension install.'},null,2));
