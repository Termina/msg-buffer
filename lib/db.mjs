const dbName = 'msg_buffer_db';
const storeName = 'kv';

function getDB() {
  return new Promise((resolve, reject) => {
    const request = indexedDB.open(dbName, 1);
    request.onerror = () => reject(request.error);
    request.onsuccess = () => resolve(request.result);
    request.onupgradeneeded = () => {
      request.result.createObjectStore(storeName);
    };
  });
}

export async function db_get(key) {
  const db = await getDB();
  const dbValue = await new Promise((resolve, reject) => {
    const transaction = db.transaction(storeName, 'readonly');
    const store = transaction.objectStore(storeName);
    const request = store.get(key);
    request.onerror = () => reject(request.error);
    request.onsuccess = () => resolve(request.result);
  });
  if (dbValue !== undefined && dbValue !== null) {
    return dbValue;
  }
  try {
    const localValue = localStorage.getItem(key);
    if (localValue !== null) {
      await db_set(key, localValue);
      localStorage.removeItem(key);
      console.log(`Successfully migrated key "${key}" from localStorage to IndexedDB.`);
      return localValue;
    }
  } catch (e) {
    console.error('Migration from localStorage failed:', e);
  }
  return null;
}

export async function db_set(key, value) {
  const db = await getDB();
  return new Promise((resolve, reject) => {
    const transaction = db.transaction(storeName, 'readwrite');
    const store = transaction.objectStore(storeName);
    const request = store.put(value, key);
    request.onerror = () => reject(request.error);
    request.onsuccess = () => resolve();
  });
}
