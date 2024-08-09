
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |*abort-control $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722536593016) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722536594378) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1722536593016) (:by |rJG4IHzWf) (:text |*abort-control)
              |h $ %{} :Leaf (:at 1722536595729) (:by |rJG4IHzWf) (:text |nil)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1626777497473) (:by |rJG4IHzWf) (:text |store)
                      |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627849325504) (:by |rJG4IHzWf) (:text |or)
                              |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                              |b $ %{} :Expr (:at 1679237728653) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1679237728821) (:by |rJG4IHzWf) (:text |[])
                      |r $ %{} :Expr (:at 1584780887905) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780889620) (:by |rJG4IHzWf) (:text |state)
                          |j $ %{} :Expr (:at 1584780889933) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627849327831) (:by |rJG4IHzWf) (:text |or)
                              |j $ %{} :Expr (:at 1584780894090) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data)
                                  |j $ %{} :Leaf (:at 1584780900314) (:by |rJG4IHzWf) (:text |states)
                              |r $ %{} :Expr (:at 1584780901014) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780901408) (:by |rJG4IHzWf) (:text |{})
                                  |n $ %{} :Expr (:at 1722410778719) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722410779405) (:by |rJG4IHzWf) (:text |:answer)
                                      |b $ %{} :Leaf (:at 1722963878976) (:by |rJG4IHzWf) (:text |nil)
                                  |q $ %{} :Expr (:at 1722425532566) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722425536183) (:by |rJG4IHzWf) (:text |:loading?)
                                      |b $ %{} :Leaf (:at 1722425536799) (:by |rJG4IHzWf) (:text |false)
                                  |s $ %{} :Expr (:at 1722447937428) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447940405) (:by |rJG4IHzWf) (:text |:done?)
                                      |b $ %{} :Leaf (:at 1722447941150) (:by |rJG4IHzWf) (:text |false)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659805533) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695659808341) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1701711029710) (:by |rJG4IHzWf) (:text |css/preset)
                                  |j $ %{} :Leaf (:at 1695659810151) (:by |rJG4IHzWf) (:text |css/global)
                                  |r $ %{} :Leaf (:at 1722963014322) (:by |rJG4IHzWf) (:text |css/column)
                                  |s $ %{} :Leaf (:at 1722963532093) (:by |rJG4IHzWf) (:text |css/fullscreen)
                                  |u $ %{} :Leaf (:at 1722445873663) (:by |rJG4IHzWf) (:text |css/gap8)
                                  |v $ %{} :Leaf (:at 1722963063278) (:by |rJG4IHzWf) (:text |style-app-global)
                      |l $ %{} :Expr (:at 1723139058342) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1723139059123) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1723139059355) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723139062982) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1723139064362) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723139179143) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1723139148323) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1723139150711) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1723139151586) (:by |rJG4IHzWf) (:text |css/expand)
                                      |T $ %{} :Leaf (:at 1723139071627) (:by |rJG4IHzWf) (:text |style-message-area)
                          |T $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |div)
                              |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1723008316022) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1723008319893) (:by |rJG4IHzWf) (:text |str-spaced)
                                          |b $ %{} :Leaf (:at 1723008328732) (:by |rJG4IHzWf) (:text |style-message-list)
                              |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |:loading?)
                                      |b $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |state)
                                  |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |div)
                                      |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |{})
                                      |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |<>)
                                          |b $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text "|\"loading...")
                                          |h $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |css/font-fancy)
                                  |l $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |if)
                                      |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |not)
                                          |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |blank?)
                                              |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |:answer)
                                                  |b $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |state)
                                      |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |div)
                                          |b $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |{})
                                          |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |comp-md-block)
                                              |b $ %{} :Expr (:at 1722482337736) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1722482338700) (:by |rJG4IHzWf) (:text |->)
                                                  |T $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |:answer)
                                                      |b $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |state)
                                                  |b $ %{} :Expr (:at 1722482343883) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722482347320) (:by |rJG4IHzWf) (:text |either)
                                                      |b $ %{} :Leaf (:at 1722482347683) (:by |rJG4IHzWf) (:text "|\"")
                                                  |h $ %{} :Expr (:at 1722482348223) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722483575784) (:by |rJG4IHzWf) (:text |.!replace)
                                                      |b $ %{} :Leaf (:at 1722483515004) (:by |rJG4IHzWf) (:text |pattern-spaced-code)
                                                      |h $ %{} :Expr (:at 1722482611544) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1722482616405) (:by |rJG4IHzWf) (:text |str)
                                                          |L $ %{} :Leaf (:at 1722482617960) (:by |rJG4IHzWf) (:text |&newline)
                                                          |T $ %{} :Leaf (:at 1722482626312) (:by |rJG4IHzWf) (:text "|\"```")
                                              |h $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722445823902) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1723139374389) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723139378423) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Leaf (:at 1723139382884) (:by |rJG4IHzWf) (:text |style-md-content)
                                          |l $ %{} :Expr (:at 1722447914966) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722447915940) (:by |rJG4IHzWf) (:text |if)
                                              |b $ %{} :Expr (:at 1722447920256) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447919916) (:by |rJG4IHzWf) (:text |:done?)
                                                  |b $ %{} :Leaf (:at 1722447921137) (:by |rJG4IHzWf) (:text |state)
                                              |e $ %{} :Expr (:at 1722482006086) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722482007064) (:by |rJG4IHzWf) (:text |div)
                                                  |b $ %{} :Expr (:at 1722482007395) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722482007688) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1722482015893) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722482017960) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1722482021013) (:by |rJG4IHzWf) (:text |css/row-parted)
                                                  |e $ %{} :Expr (:at 1722482010473) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722482011312) (:by |rJG4IHzWf) (:text |span)
                                                      |b $ %{} :Expr (:at 1722482012316) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722482012629) (:by |rJG4IHzWf) (:text |{})
                                                  |h $ %{} :Expr (:at 1722482028826) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1722482030649) (:by |rJG4IHzWf) (:text |div)
                                                      |L $ %{} :Expr (:at 1722482031317) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722482031618) (:by |rJG4IHzWf) (:text |{})
                                                          |b $ %{} :Expr (:at 1722482032340) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722482034831) (:by |rJG4IHzWf) (:text |:class-name)
                                                              |b $ %{} :Expr (:at 1722482060067) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1722482062041) (:by |rJG4IHzWf) (:text |str-spaced)
                                                                  |T $ %{} :Leaf (:at 1722482037621) (:by |rJG4IHzWf) (:text |css/row-middle)
                                                      |T $ %{} :Expr (:at 1722482008623) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722482008623) (:by |rJG4IHzWf) (:text |comp-copy)
                                                          |b $ %{} :Expr (:at 1722482008623) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722482008623) (:by |rJG4IHzWf) (:text |:answer)
                                                              |b $ %{} :Leaf (:at 1722482008623) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Expr (:at 1722447922037) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447926334) (:by |rJG4IHzWf) (:text |div)
                                                  |b $ %{} :Expr (:at 1722447926334) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722447926334) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1722448135667) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722448139058) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1722448139381) (:by |rJG4IHzWf) (:text |style-more)
                                                  |h $ %{} :Expr (:at 1722447926334) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722447926334) (:by |rJG4IHzWf) (:text |<>)
                                                      |b $ %{} :Leaf (:at 1722965452159) (:by |rJG4IHzWf) (:text "|\"Streaming...")
                                                      |h $ %{} :Expr (:at 1722448074846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1722448078258) (:by |rJG4IHzWf) (:text |str-spaced)
                                                          |T $ %{} :Leaf (:at 1722447926334) (:by |rJG4IHzWf) (:text |css/font-fancy)
                              |l $ %{} :Expr (:at 1723009241406) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723009242315) (:by |rJG4IHzWf) (:text |=<)
                                  |b $ %{} :Leaf (:at 1723009244225) (:by |rJG4IHzWf) (:text |nil)
                                  |h $ %{} :Leaf (:at 1723009245221) (:by |rJG4IHzWf) (:text |200)
                      |r $ %{} :Expr (:at 1722536188689) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536196074) (:by |rJG4IHzWf) (:text |comp-message-box)
                          |b $ %{} :Expr (:at 1722536198436) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536198830) (:by |rJG4IHzWf) (:text |>>)
                              |b $ %{} :Leaf (:at 1722536199596) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Leaf (:at 1722536202560) (:by |rJG4IHzWf) (:text |:message-box)
                          |h $ %{} :Expr (:at 1722536439171) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536439798) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1722536440149) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536443636) (:by |rJG4IHzWf) (:text |text)
                                  |b $ %{} :Leaf (:at 1722536444297) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1722536447091) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536447091) (:by |rJG4IHzWf) (:text |submit-message!)
                                  |b $ %{} :Leaf (:at 1722536447091) (:by |rJG4IHzWf) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1722536447091) (:by |rJG4IHzWf) (:text |state)
                                  |j $ %{} :Leaf (:at 1722536453018) (:by |rJG4IHzWf) (:text |text)
                                  |l $ %{} :Leaf (:at 1722536447091) (:by |rJG4IHzWf) (:text |d!)
                      |x $ %{} :Expr (:at 1723173383483) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1723173387100) (:by |rJG4IHzWf) (:text |if)
                          |L $ %{} :Leaf (:at 1723173385793) (:by |rJG4IHzWf) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1584780610581) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584780611347) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1584780613268) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
                      |y $ %{} :Expr (:at 1723173388477) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723173388840) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Leaf (:at 1723173389843) (:by |rJG4IHzWf) (:text |dev?)
                          |h $ %{} :Expr (:at 1723173390639) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723173394293) (:by |rJG4IHzWf) (:text |comp-inspect)
                              |b $ %{} :Leaf (:at 1723173396026) (:by |rJG4IHzWf) (:text "|\"Store")
                              |h $ %{} :Leaf (:at 1723173397494) (:by |rJG4IHzWf) (:text |store)
                              |l $ %{} :Leaf (:at 1723173398573) (:by |rJG4IHzWf) (:text |nil)
        |comp-message-box $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722536204293) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722536213982) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1722536204293) (:by |rJG4IHzWf) (:text |comp-message-box)
              |h $ %{} :Expr (:at 1722536204293) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722536210883) (:by |rJG4IHzWf) (:text |states)
                  |b $ %{} :Leaf (:at 1722536416126) (:by |rJG4IHzWf) (:text |on-submit)
              |l $ %{} :Expr (:at 1722536215653) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1722536216305) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1722536216555) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1722536239685) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536240505) (:by |rJG4IHzWf) (:text |cursor)
                          |b $ %{} :Expr (:at 1722536240674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536241583) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1722536242541) (:by |rJG4IHzWf) (:text |states)
                      |T $ %{} :Expr (:at 1722536216714) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536245819) (:by |rJG4IHzWf) (:text |state)
                          |b $ %{} :Expr (:at 1722536224983) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536230451) (:by |rJG4IHzWf) (:text |either)
                              |b $ %{} :Expr (:at 1722536230771) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536231317) (:by |rJG4IHzWf) (:text |:data)
                                  |b $ %{} :Leaf (:at 1722536233169) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Expr (:at 1722536234482) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536234805) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1722536235205) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536236503) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Leaf (:at 1722536237836) (:by |rJG4IHzWf) (:text "|\"")
                  |T $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |css/center)
                                  |l $ %{} :Leaf (:at 1722963242805) (:by |rJG4IHzWf) (:text |style-message-box)
                      |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |textarea)
                          |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:value)
                                  |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:placeholder)
                                  |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text "|\"Content")
                              |j $ %{} :Expr (:at 1722965218570) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722965219789) (:by |rJG4IHzWf) (:text |:id)
                                  |b $ %{} :Leaf (:at 1722965223404) (:by |rJG4IHzWf) (:text "|\"message")
                              |l $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |css/textarea)
                                      |e $ %{} :Leaf (:at 1722964960984) (:by |rJG4IHzWf) (:text |css/font-code!)
                                      |h $ %{} :Leaf (:at 1722964845813) (:by |rJG4IHzWf) (:text |style-textbox)
                              |q $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:on-input)
                                  |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |d!)
                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |cursor)
                                          |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:content)
                                              |l $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                              |s $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:on-keydown)
                                  |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |if)
                                          |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |and)
                                              |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |=)
                                                  |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |13)
                                                  |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:keycode)
                                                      |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                              |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:meta?)
                                                  |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                          |l $ %{} :Expr (:at 1722536419205) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536419900) (:by |rJG4IHzWf) (:text |on-submit)
                                              |b $ %{} :Expr (:at 1722536423510) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536424418) (:by |rJG4IHzWf) (:text |:content)
                                                  |b $ %{} :Leaf (:at 1722536426394) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Leaf (:at 1722536427678) (:by |rJG4IHzWf) (:text |d!)
                      |l $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |button)
                          |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1722963277244) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1722963281394) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |css/button)
                                      |b $ %{} :Leaf (:at 1722963290998) (:by |rJG4IHzWf) (:text |style-submit)
                              |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1722965711522) (:by |rJG4IHzWf) (:text "|\"Generate")
                              |l $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:on-click)
                                  |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |;)
                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |println)
                                          |h $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:content)
                                              |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Expr (:at 1722536434666) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536434666) (:by |rJG4IHzWf) (:text |on-submit)
                                          |b $ %{} :Expr (:at 1722536434666) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536434666) (:by |rJG4IHzWf) (:text |:content)
                                              |b $ %{} :Leaf (:at 1722536434666) (:by |rJG4IHzWf) (:text |state)
                                          |h $ %{} :Leaf (:at 1722536434666) (:by |rJG4IHzWf) (:text |d!)
                      |o $ %{} :Expr (:at 1722965020043) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722965021333) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Expr (:at 1722965030750) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1722965031352) (:by |rJG4IHzWf) (:text |not)
                              |T $ %{} :Expr (:at 1722965024623) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1722965028235) (:by |rJG4IHzWf) (:text |blank?)
                                  |T $ %{} :Expr (:at 1722965022922) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722965022922) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Leaf (:at 1722965022922) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1722965069081) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965069081) (:by |rJG4IHzWf) (:text |comp-close)
                              |b $ %{} :Expr (:at 1722965070390) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722965071425) (:by |rJG4IHzWf) (:text |{})
                                  |X $ %{} :Expr (:at 1722965084061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722965087170) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1722965090173) (:by |rJG4IHzWf) (:text |style-clear)
                                  |b $ %{} :Expr (:at 1722965071839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722965075272) (:by |rJG4IHzWf) (:text |:on-click)
                                      |b $ %{} :Expr (:at 1722965075541) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722965076006) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1722965076328) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722965076541) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1722965077748) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1722965190406) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722965191669) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1722965192894) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1722965193115) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722965195162) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1722965196793) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1722965197792) (:by |rJG4IHzWf) (:text |:content)
                                                  |l $ %{} :Leaf (:at 1722965198275) (:by |rJG4IHzWf) (:text "|\"")
                                          |l $ %{} :Expr (:at 1722965240723) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1722965241869) (:by |rJG4IHzWf) (:text |->)
                                              |T $ %{} :Expr (:at 1722965226578) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722965236898) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                                                  |b $ %{} :Leaf (:at 1722965239062) (:by |rJG4IHzWf) (:text "|\"#message")
                                              |b $ %{} :Expr (:at 1722965242717) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722965247338) (:by |rJG4IHzWf) (:text |.!focus)
        |first-line $ %{} :CodeEntry (:doc "|last message from error contains a line starts with \"data: \" and an extra error message. In order that JSON is parsed correctly, only first line is used now.")
          :code $ %{} :Expr (:at 1723138240850) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723138241954) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1723138240850) (:by |rJG4IHzWf) (:text |first-line)
              |h $ %{} :Expr (:at 1723138240850) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723138248490) (:by |rJG4IHzWf) (:text |tt)
              |l $ %{} :Expr (:at 1723138334253) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1723138338084) (:by |rJG4IHzWf) (:text |let)
                  |T $ %{} :Expr (:at 1723138340627) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1723138338877) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1723138339723) (:by |rJG4IHzWf) (:text |lines)
                          |T $ %{} :Expr (:at 1723138249537) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723138253165) (:by |rJG4IHzWf) (:text |.!split)
                              |b $ %{} :Leaf (:at 1723138253742) (:by |rJG4IHzWf) (:text |tt)
                              |h $ %{} :Leaf (:at 1723138256156) (:by |rJG4IHzWf) (:text |&newline)
                  |X $ %{} :Expr (:at 1723138503364) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1723138504959) (:by |rJG4IHzWf) (:text |if)
                      |L $ %{} :Expr (:at 1723138505196) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723138505476) (:by |rJG4IHzWf) (:text |>)
                          |X $ %{} :Expr (:at 1723138512446) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1723138515134) (:by |rJG4IHzWf) (:text |.-length)
                              |T $ %{} :Leaf (:at 1723138508735) (:by |rJG4IHzWf) (:text |lines)
                          |b $ %{} :Leaf (:at 1723138506939) (:by |rJG4IHzWf) (:text |1)
                      |T $ %{} :Expr (:at 1723138351901) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723138364853) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1723138375520) (:by |rJG4IHzWf) (:text "|\"Droping some unexpected lines:")
                          |h $ %{} :Expr (:at 1723138517082) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1723138518913) (:by |rJG4IHzWf) (:text |.!slice)
                              |T $ %{} :Leaf (:at 1723138369917) (:by |rJG4IHzWf) (:text |lines)
                              |b $ %{} :Leaf (:at 1723138520407) (:by |rJG4IHzWf) (:text |1)
                  |b $ %{} :Expr (:at 1723138344855) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723138346137) (:by |rJG4IHzWf) (:text |.-0)
                      |b $ %{} :Leaf (:at 1723138348088) (:by |rJG4IHzWf) (:text |lines)
        |get-gemini-key! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722448309409) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722448309409) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1722448309409) (:by |rJG4IHzWf) (:text |get-gemini-key!)
              |h $ %{} :Expr (:at 1722448309409) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1722448313500) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1722448315653) (:by |rJG4IHzWf) (:text |let)
                  |T $ %{} :Expr (:at 1722448316141) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1722448316282) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722448316980) (:by |rJG4IHzWf) (:text |key)
                          |T $ %{} :Expr (:at 1722448310934) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722448310934) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |b $ %{} :Leaf (:at 1722448310934) (:by |rJG4IHzWf) (:text "|\"gemini-key")
                  |X $ %{} :Expr (:at 1722448321528) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722448320481) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Expr (:at 1722448323255) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722448325686) (:by |rJG4IHzWf) (:text |blank?)
                          |b $ %{} :Leaf (:at 1722448326631) (:by |rJG4IHzWf) (:text |key)
                      |h $ %{} :Expr (:at 1722963915060) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722963915812) (:by |rJG4IHzWf) (:text |let)
                          |T $ %{} :Expr (:at 1722963916720) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1722963916864) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1722963917432) (:by |rJG4IHzWf) (:text |v)
                                  |T $ %{} :Expr (:at 1722448328093) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722963913549) (:by |rJG4IHzWf) (:text |js/prompt)
                                      |b $ %{} :Leaf (:at 1722448341536) (:by |rJG4IHzWf) (:text "|\"Required gemini-key in localStorage")
                          |V $ %{} :Expr (:at 1723194578778) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Expr (:at 1723194578778) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |v)
                              |h $ %{} :Expr (:at 1723194578778) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |raise)
                                  |b $ %{} :Expr (:at 1723194578778) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text |js/Error)
                                      |h $ %{} :Leaf (:at 1723194578778) (:by |rJG4IHzWf) (:text "|\"key is empty")
                          |X $ %{} :Expr (:at 1722963927392) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722963929685) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                              |b $ %{} :Leaf (:at 1722963927392) (:by |rJG4IHzWf) (:text "|\"gemini-key")
                              |h $ %{} :Leaf (:at 1722963931640) (:by |rJG4IHzWf) (:text |v)
                          |b $ %{} :Leaf (:at 1722963919289) (:by |rJG4IHzWf) (:text |v)
                      |l $ %{} :Leaf (:at 1722963922770) (:by |rJG4IHzWf) (:text |key)
        |pattern-spaced-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722483516034) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722483516034) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1722483516034) (:by |rJG4IHzWf) (:text |pattern-spaced-code)
              |h $ %{} :Expr (:at 1722483610419) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1722483612439) (:by |rJG4IHzWf) (:text |noted)
                  |D $ %{} :Leaf (:at 1722483610993) (:by |rJG4IHzWf) (:text "|\"temp fix of nested code block")
                  |T $ %{} :Expr (:at 1722483516034) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722483552376) (:by |rJG4IHzWf) (:text |&raw-code)
                      |b $ %{} :Leaf (:at 1722483588111) (:by |rJG4IHzWf) (:text "|\"/\\n\\s+```/g")
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722480815830) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722480815830) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1722480815830) (:by |rJG4IHzWf) (:text |pick-model)
              |e $ %{} :Expr (:at 1722480823778) (:by |rJG4IHzWf)
                :data $ {}
              |h $ %{} :Expr (:at 1722480815830) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1722480836949) (:by |rJG4IHzWf) (:text |get-env)
                  |L $ %{} :Leaf (:at 1722480838937) (:by |rJG4IHzWf) (:text "|\"model")
                  |T $ %{} :Leaf (:at 1722480820908) (:by |rJG4IHzWf) (:text "|\"gemini-1.5-flash")
        |style-app-global $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722963063687) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722963065771) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722963063687) (:by |rJG4IHzWf) (:text |style-app-global)
              |h $ %{} :Expr (:at 1722963063687) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722963066913) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722963067424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1722963173613) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722963174416) (:by |rJG4IHzWf) (:text |str)
                          |T $ %{} :Leaf (:at 1722963179783) (:by |rJG4IHzWf) (:text "|\"& .")
                          |b $ %{} :Leaf (:at 1722963177715) (:by |rJG4IHzWf) (:text |style-code-block)
                      |b $ %{} :Expr (:at 1722963069383) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722963069700) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722963197653) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722963199934) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1722963203380) (:by |rJG4IHzWf) (:text "|\"90vw")
                  |h $ %{} :Expr (:at 1723137097778) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723137098848) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1723137099199) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723137099534) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723137099776) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723137100569) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1723137233193) (:by |rJG4IHzWf) (:text "|\"#999")
                          |h $ %{} :Expr (:at 1723137152738) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723137159216) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1723137160974) (:by |rJG4IHzWf) (:text "|\"300ms")
                          |l $ %{} :Expr (:at 1723138789366) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723138789366) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1723138789366) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723138789366) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1723138789366) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1723138789366) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1723138835741) (:by |rJG4IHzWf) (:text |98)
                  |l $ %{} :Expr (:at 1723137097778) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723137130651) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1723137099199) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723137099534) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723137099776) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723137100569) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1723138711581) (:by |rJG4IHzWf) (:text "|\"#777")
                          |h $ %{} :Expr (:at 1723138918385) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723138918385) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1723138918385) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723138918385) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1723138918385) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1723138918385) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1723138920702) (:by |rJG4IHzWf) (:text |100)
        |style-clear $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722965090807) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722965092271) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722965090807) (:by |rJG4IHzWf) (:text |style-clear)
              |h $ %{} :Expr (:at 1722965090807) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722965093344) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722965093978) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722965096806) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1722965098318) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722965098738) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722965099188) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965102193) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1722965106099) (:by |rJG4IHzWf) (:text |:absolute)
                          |h $ %{} :Expr (:at 1722965106982) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008928391) (:by |rJG4IHzWf) (:text |:left)
                              |b $ %{} :Leaf (:at 1723008934337) (:by |rJG4IHzWf) (:text |20)
                          |l $ %{} :Expr (:at 1722965112662) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008930473) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1723008936199) (:by |rJG4IHzWf) (:text |20)
                          |o $ %{} :Expr (:at 1722965163000) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965169477) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1722965172773) (:by |rJG4IHzWf) (:text |0.4)
        |style-md-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723139383524) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723139384896) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1723139383524) (:by |rJG4IHzWf) (:text |style-md-content)
              |h $ %{} :Expr (:at 1723139383524) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723139385970) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1723139386254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723139390693) (:by |rJG4IHzWf) (:text "|\"& .md-p")
                      |b $ %{} :Expr (:at 1723139392069) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723139392450) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723139392978) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723139431096) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1723139692210) (:by |rJG4IHzWf) (:text "|\"16px 0")
                          |h $ %{} :Expr (:at 1723139665907) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723139669967) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1723139676730) (:by |rJG4IHzWf) (:text "|\"1.6")
        |style-message-area $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723139076928) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723139078482) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1723139076928) (:by |rJG4IHzWf) (:text |style-message-area)
              |h $ %{} :Expr (:at 1723139080150) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1723139080652) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1723139079328) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1723139079328) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723139079328) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text |:flex)
                              |b $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text |2)
                          |s $ %{} :Expr (:at 1723139079328) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1723139079328) (:by |rJG4IHzWf) (:text |:scroll)
        |style-message-box $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722963245314) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722963247833) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722963245314) (:by |rJG4IHzWf) (:text |style-message-box)
              |h $ %{} :Expr (:at 1722963248720) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722963249995) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722963250446) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722963251567) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1722963251834) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722963252154) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722963253603) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722963255664) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1723009221445) (:by |rJG4IHzWf) (:text |:absolute)
                          |g $ %{} :Expr (:at 1723009224492) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009225607) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1723009226474) (:by |rJG4IHzWf) (:text |0)
                          |i $ %{} :Expr (:at 1723009262069) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009264048) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1723009381682) (:by |rJG4IHzWf) (:text |0.9)
                          |l $ %{} :Expr (:at 1723008262315) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |1200)
                          |o $ %{} :Expr (:at 1723008262315) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text "|\"100%")
                          |p $ %{} :Expr (:at 1723009676687) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009685327) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1723009687437) (:by |rJG4IHzWf) (:text "|\"50%")
                          |q $ %{} :Expr (:at 1723008262315) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text "|\"8px")
                          |s $ %{} :Expr (:at 1723008262315) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:auto)
                          |t $ %{} :Expr (:at 1723009306927) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009310956) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1723009322467) (:by |rJG4IHzWf) (:text "|\"300ms")
                          |u $ %{} :Expr (:at 1723009695319) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009698867) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1723009885600) (:by |rJG4IHzWf) (:text "|\"translate(50%,0)")
                  |h $ %{} :Expr (:at 1723009270885) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723009298734) (:by |rJG4IHzWf) (:text "|\"&:focus-within")
                      |b $ %{} :Expr (:at 1723009276874) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723009277352) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723009277572) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009279238) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1723009279508) (:by |rJG4IHzWf) (:text |1)
                          |h $ %{} :Expr (:at 1723009718408) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723009718408) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1723009718408) (:by |rJG4IHzWf) (:text "|\"translate(50%,0)")
        |style-message-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723008329516) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723008330920) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1723008329516) (:by |rJG4IHzWf) (:text |style-message-list)
              |h $ %{} :Expr (:at 1723008329516) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723008332925) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1723008333369) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723008334008) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:flex)
                              |b $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |2)
                          |h $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text "|\"40px 16px 200px 16px")
                          |l $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text "|\"100%")
                          |o $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |1200)
                          |q $ %{} :Expr (:at 1723008334962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1723008334962) (:by |rJG4IHzWf) (:text |:auto)
        |style-more $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722448082591) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722448084612) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722448082591) (:by |rJG4IHzWf) (:text |style-more)
              |h $ %{} :Expr (:at 1722448082591) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722448085691) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722448085996) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722448087023) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1722448087274) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722448087573) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722448089779) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722448103830) (:by |rJG4IHzWf) (:text |:text-align)
                              |b $ %{} :Leaf (:at 1722965423728) (:by |rJG4IHzWf) (:text |:center)
                          |e $ %{} :Expr (:at 1722965425416) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965427997) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1722965432490) (:by |rJG4IHzWf) (:text |80)
                          |h $ %{} :Expr (:at 1722448108516) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722448111955) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1722448112162) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722448112471) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1722448112792) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1722448112992) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1722965470035) (:by |rJG4IHzWf) (:text |94)
                          |l $ %{} :Expr (:at 1722448151431) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722448154884) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1722448172596) (:by |rJG4IHzWf) (:text |12)
                          |o $ %{} :Expr (:at 1722965459445) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965461805) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1722965465188) (:by |rJG4IHzWf) (:text "|\"4px 8px")
                          |q $ %{} :Expr (:at 1722965489176) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965490583) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1722965496076) (:by |rJG4IHzWf) (:text "|\"8px 0")
        |style-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722963291408) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722963293102) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722963291408) (:by |rJG4IHzWf) (:text |style-submit)
              |h $ %{} :Expr (:at 1722963291408) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722963294216) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722963294514) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722963295831) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1722963296150) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722963296464) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722963297722) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722963298890) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1722963303008) (:by |rJG4IHzWf) (:text |:absolute)
                          |h $ %{} :Expr (:at 1722963303602) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722964810780) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1723008946547) (:by |rJG4IHzWf) (:text |20)
                          |l $ %{} :Expr (:at 1722963303602) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722963394752) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1723008950206) (:by |rJG4IHzWf) (:text |20)
        |style-textbox $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722964846664) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722964848143) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1722964846664) (:by |rJG4IHzWf) (:text |style-textbox)
              |h $ %{} :Expr (:at 1722964846664) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722964849204) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1722964849581) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722964850614) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1722964850928) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722964851279) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722964851770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722964853950) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1722964870294) (:by |rJG4IHzWf) (:text |12)
                          |l $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1723010556927) (:by |rJG4IHzWf) (:text "|\"160px")
                          |o $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text "|\"100%")
                          |q $ %{} :Expr (:at 1723010474462) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010479048) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1723010547772) (:by |rJG4IHzWf) (:text "|\"320ms")
                  |h $ %{} :Expr (:at 1722964849581) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723010457510) (:by |rJG4IHzWf) (:text "|\"&:focus-within")
                      |b $ %{} :Expr (:at 1722964850928) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722964851279) (:by |rJG4IHzWf) (:text |{})
                          |l $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1723010494761) (:by |rJG4IHzWf) (:text "|\"260px")
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1722409346610) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722409346610) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1722409346610) (:by |rJG4IHzWf) (:text |submit-message!)
              |h $ %{} :Expr (:at 1722409346610) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722409346610) (:by |rJG4IHzWf) (:text |cursor)
                  |b $ %{} :Leaf (:at 1722409346610) (:by |rJG4IHzWf) (:text |state)
                  |e $ %{} :Leaf (:at 1723105757947) (:by |rJG4IHzWf) (:text |prompt-text)
                  |h $ %{} :Leaf (:at 1722410766404) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1722409347984) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722409349526) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1722409350436) (:by |rJG4IHzWf) (:text |async)
              |lT $ %{} :Expr (:at 1722536608603) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722536615183) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1722536611646) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1722536620852) (:by |rJG4IHzWf) (:text |abort)
                      |T $ %{} :Expr (:at 1722536622931) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722536624092) (:by |rJG4IHzWf) (:text |deref)
                          |T $ %{} :Leaf (:at 1722536611444) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1722536657102) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1722536657601) (:by |rJG4IHzWf) (:text |do)
                      |L $ %{} :Expr (:at 1722536659137) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723105985253) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1722536669226) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |T $ %{} :Expr (:at 1722536625917) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722536631792) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1722536633902) (:by |rJG4IHzWf) (:text |abort)
              |m $ %{} :Expr (:at 1722410955319) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722410956193) (:by |rJG4IHzWf) (:text |d!)
                  |h $ %{} :Expr (:at 1723173639734) (:by |rJG4IHzWf)
                    :data $ {}
                      |5 $ %{} :Leaf (:at 1723173643282) (:by |rJG4IHzWf) (:text |::)
                      |D $ %{} :Leaf (:at 1723173641281) (:by |rJG4IHzWf) (:text |:states)
                      |L $ %{} :Leaf (:at 1723173641796) (:by |rJG4IHzWf) (:text |cursor)
                      |T $ %{} :Expr (:at 1722425554217) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722425555359) (:by |rJG4IHzWf) (:text |->)
                          |L $ %{} :Leaf (:at 1722425557287) (:by |rJG4IHzWf) (:text |state)
                          |T $ %{} :Expr (:at 1722410962303) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722410963398) (:by |rJG4IHzWf) (:text |assoc)
                              |h $ %{} :Leaf (:at 1722410966516) (:by |rJG4IHzWf) (:text |:answer)
                              |l $ %{} :Leaf (:at 1722410967158) (:by |rJG4IHzWf) (:text |nil)
                          |b $ %{} :Expr (:at 1722410962303) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722410963398) (:by |rJG4IHzWf) (:text |assoc)
                              |h $ %{} :Leaf (:at 1722425562740) (:by |rJG4IHzWf) (:text |:loading?)
                              |l $ %{} :Leaf (:at 1722425564929) (:by |rJG4IHzWf) (:text |true)
              |o $ %{} :Expr (:at 1722409352561) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722409352561) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1722409352561) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1723105003222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723105005485) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1723105005806) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723105008294) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1723105137971) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723105008656) (:by |rJG4IHzWf) (:text |get-selected)
                      |L $ %{} :Expr (:at 1723105744388) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723105749368) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1723105750725) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723105752174) (:by |rJG4IHzWf) (:text |.replace)
                              |b $ %{} :Leaf (:at 1723105759695) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1723105766407) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1723105777610) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1723105791996) (:by |rJG4IHzWf) (:text |or)
                                  |T $ %{} :Leaf (:at 1723105771630) (:by |rJG4IHzWf) (:text |selected)
                                  |b $ %{} :Leaf (:at 1723105788710) (:by |rJG4IHzWf) (:text "|\"<未找到内容>")
                      |T $ %{} :Expr (:at 1722409352561) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722409352561) (:by |rJG4IHzWf) (:text |result)
                          |b $ %{} :Expr (:at 1722447080517) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1722447083217) (:by |rJG4IHzWf) (:text |js-await)
                              |T $ %{} :Expr (:at 1722410309574) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1722410319548) (:by |rJG4IHzWf) (:text |.!post)
                                  |T $ %{} :Leaf (:at 1722410311824) (:by |rJG4IHzWf) (:text |axios)
                                  |X $ %{} :Expr (:at 1722480805746) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1722480806471) (:by |rJG4IHzWf) (:text |str)
                                      |T $ %{} :Leaf (:at 1722480859612) (:by |rJG4IHzWf) (:text "|\"https://sf.chenyong.life/v1beta/models/")
                                      |b $ %{} :Expr (:at 1722480809062) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722480815201) (:by |rJG4IHzWf) (:text |pick-model)
                                      |h $ %{} :Leaf (:at 1722480851526) (:by |rJG4IHzWf) (:text "|\":streamGenerateContent")
                                  |Z $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722410630618) (:by |rJG4IHzWf) (:text |:contents)
                                          |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |:parts)
                                                      |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |js-array)
                                                          |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |js-object)
                                                              |b $ %{} :Expr (:at 1722410582786) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1722410582786) (:by |rJG4IHzWf) (:text |:text)
                                                                  |b $ %{} :Leaf (:at 1723105794657) (:by |rJG4IHzWf) (:text |content)
                                  |b $ %{} :Expr (:at 1722410320737) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722410323567) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1722410324011) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722410370032) (:by |rJG4IHzWf) (:text |:params)
                                          |b $ %{} :Expr (:at 1722410382291) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722410388486) (:by |rJG4IHzWf) (:text |js-object)
                                              |b $ %{} :Expr (:at 1722410389535) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722410391267) (:by |rJG4IHzWf) (:text |:key)
                                                  |b $ %{} :Expr (:at 1723194500835) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722448307986) (:by |rJG4IHzWf) (:text |get-gemini-key!)
                                              |h $ %{} :Expr (:at 1722446159882) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722446161578) (:by |rJG4IHzWf) (:text |:alt)
                                                  |b $ %{} :Leaf (:at 1722446164742) (:by |rJG4IHzWf) (:text "|\"sse")
                                      |h $ %{} :Expr (:at 1722410402136) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722410403975) (:by |rJG4IHzWf) (:text |:headers)
                                          |b $ %{} :Expr (:at 1722410404164) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722410406350) (:by |rJG4IHzWf) (:text |js-object)
                                              |b $ %{} :Expr (:at 1722410407857) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722446644647) (:by |rJG4IHzWf) (:text |:Accept)
                                                  |b $ %{} :Leaf (:at 1722446475024) (:by |rJG4IHzWf) (:text "|\"text/event-stream")
                                              |h $ %{} :Expr (:at 1722446632773) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1722446759641) (:by |rJG4IHzWf) (:text |;)
                                                  |T $ %{} :Leaf (:at 1722446637165) (:by |rJG4IHzWf) (:text |:Content-Type)
                                                  |b $ %{} :Leaf (:at 1722446642044) (:by |rJG4IHzWf) (:text "|\"application/json")
                                      |l $ %{} :Expr (:at 1722446754051) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722446755704) (:by |rJG4IHzWf) (:text |:responseType)
                                          |b $ %{} :Leaf (:at 1722446757664) (:by |rJG4IHzWf) (:text "|\"stream")
                                      |o $ %{} :Expr (:at 1722447153499) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722447157927) (:by |rJG4IHzWf) (:text |:adapter)
                                          |b $ %{} :Leaf (:at 1722447160885) (:by |rJG4IHzWf) (:text "|\"fetch")
                                      |q $ %{} :Expr (:at 1722536545338) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722536547676) (:by |rJG4IHzWf) (:text |:signal)
                                          |b $ %{} :Expr (:at 1722536551083) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722536568465) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1722536571830) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1722536573231) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722536575164) (:by |rJG4IHzWf) (:text |abort)
                                                      |b $ %{} :Expr (:at 1722536578041) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722536579985) (:by |rJG4IHzWf) (:text |new)
                                                          |b $ %{} :Leaf (:at 1722536583127) (:by |rJG4IHzWf) (:text |js/AbortController)
                                              |h $ %{} :Expr (:at 1722536586304) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536587130) (:by |rJG4IHzWf) (:text |reset!)
                                                  |b $ %{} :Leaf (:at 1722536592695) (:by |rJG4IHzWf) (:text |*abort-control)
                                                  |h $ %{} :Leaf (:at 1722536598645) (:by |rJG4IHzWf) (:text |abort)
                                              |l $ %{} :Expr (:at 1722536884869) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1722536890390) (:by |rJG4IHzWf) (:text |.-signal)
                                                  |T $ %{} :Leaf (:at 1722536602478) (:by |rJG4IHzWf) (:text |abort)
                      |X $ %{} :Expr (:at 1722446217609) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722446219380) (:by |rJG4IHzWf) (:text |stream)
                          |b $ %{} :Expr (:at 1722446220321) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722446222087) (:by |rJG4IHzWf) (:text |.-data)
                              |b $ %{} :Leaf (:at 1722446223864) (:by |rJG4IHzWf) (:text |result)
                      |Z $ %{} :Expr (:at 1722447346887) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722447350186) (:by |rJG4IHzWf) (:text |reader)
                          |b $ %{} :Expr (:at 1722447371235) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1722447372297) (:by |rJG4IHzWf) (:text |->)
                              |T $ %{} :Expr (:at 1722447351739) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722447357337) (:by |rJG4IHzWf) (:text |.!pipeThrough)
                                  |b $ %{} :Leaf (:at 1722447360433) (:by |rJG4IHzWf) (:text |stream)
                                  |h $ %{} :Expr (:at 1722447361126) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447361685) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1722447367249) (:by |rJG4IHzWf) (:text |js/TextDecoderStream)
                              |b $ %{} :Expr (:at 1722447373007) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722447376155) (:by |rJG4IHzWf) (:text |.!getReader)
                      |ZT $ %{} :Expr (:at 1722447780638) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722447786715) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1722447787121) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722447789052) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1722447789444) (:by |rJG4IHzWf) (:text "|\"")
                      |a $ %{} :Expr (:at 1722447464352) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722447608856) (:by |rJG4IHzWf) (:text |;)
                          |T $ %{} :Leaf (:at 1722447466095) (:by |rJG4IHzWf) (:text |reading)
                          |b $ %{} :Expr (:at 1722447468140) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722447468140) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1722447468140) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722447468140) (:by |rJG4IHzWf) (:text |.!read)
                                  |b $ %{} :Leaf (:at 1722447468140) (:by |rJG4IHzWf) (:text |reader)
                      |b $ %{} :Expr (:at 1722410728227) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1722446212290) (:by |rJG4IHzWf) (:text |;)
                          |T $ %{} :Leaf (:at 1722410739218) (:by |rJG4IHzWf) (:text |answer)
                          |b $ %{} :Expr (:at 1722410734329) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |result)
                              |h $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-data)
                              |l $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-candidates)
                              |o $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-0)
                              |q $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-content)
                              |s $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-parts)
                              |t $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-0)
                              |u $ %{} :Leaf (:at 1722410734329) (:by |rJG4IHzWf) (:text |.-text)
                  |h $ %{} :Expr (:at 1722409352561) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1722446208836) (:by |rJG4IHzWf) (:text |;)
                      |T $ %{} :Leaf (:at 1722410742738) (:by |rJG4IHzWf) (:text |d!)
                      |h $ %{} :Expr (:at 1723173649866) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1723173650639) (:by |rJG4IHzWf) (:text |::)
                          |L $ %{} :Leaf (:at 1723173651690) (:by |rJG4IHzWf) (:text |:states)
                          |P $ %{} :Leaf (:at 1723173652147) (:by |rJG4IHzWf) (:text |cursor)
                          |T $ %{} :Expr (:at 1722425567125) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1722425567881) (:by |rJG4IHzWf) (:text |->)
                              |L $ %{} :Leaf (:at 1722425570008) (:by |rJG4IHzWf) (:text |state)
                              |T $ %{} :Expr (:at 1722410745264) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722410746182) (:by |rJG4IHzWf) (:text |assoc)
                                  |h $ %{} :Leaf (:at 1722410753076) (:by |rJG4IHzWf) (:text |:answer)
                                  |l $ %{} :Expr (:at 1722425707473) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1722425709038) (:by |rJG4IHzWf) (:text |w-log)
                                      |T $ %{} :Leaf (:at 1722410751065) (:by |rJG4IHzWf) (:text |answer)
                              |b $ %{} :Expr (:at 1722425572003) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722425572698) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1722425575401) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1722425748929) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1722447556153) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1722447562182) (:by |rJG4IHzWf) (:text |apply-args)
                      |b $ %{} :Expr (:at 1722447563490) (:by |rJG4IHzWf)
                        :data $ {}
                      |h $ %{} :Expr (:at 1722447564203) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722447564546) (:by |rJG4IHzWf) (:text |fn)
                          |b $ %{} :Expr (:at 1722447565797) (:by |rJG4IHzWf)
                            :data $ {}
                          |h $ %{} :Expr (:at 1722447575042) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722447582309) (:by |rJG4IHzWf) (:text |hint-fn)
                              |b $ %{} :Leaf (:at 1722447583343) (:by |rJG4IHzWf) (:text |async)
                          |l $ %{} :Expr (:at 1722447592213) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722447595070) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1722447595500) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1722447596814) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447600784) (:by |rJG4IHzWf) (:text |info)
                                      |b $ %{} :Expr (:at 1722447601673) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722447602889) (:by |rJG4IHzWf) (:text |js-await)
                                          |b $ %{} :Expr (:at 1722447606502) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722447606502) (:by |rJG4IHzWf) (:text |.!read)
                                              |b $ %{} :Leaf (:at 1722447606502) (:by |rJG4IHzWf) (:text |reader)
                                  |b $ %{} :Expr (:at 1722447619880) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447620597) (:by |rJG4IHzWf) (:text |value)
                                      |b $ %{} :Expr (:at 1722447620861) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722447621780) (:by |rJG4IHzWf) (:text |.-value)
                                          |b $ %{} :Leaf (:at 1722447622281) (:by |rJG4IHzWf) (:text |info)
                                  |h $ %{} :Expr (:at 1722447623740) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447625685) (:by |rJG4IHzWf) (:text |done?)
                                      |b $ %{} :Expr (:at 1722447626040) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1722447627232) (:by |rJG4IHzWf) (:text |.-done)
                                          |b $ %{} :Leaf (:at 1722447628065) (:by |rJG4IHzWf) (:text |info)
                              |h $ %{} :Expr (:at 1722447632874) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1722447633362) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Leaf (:at 1722447636243) (:by |rJG4IHzWf) (:text |done?)
                                  |h $ %{} :Expr (:at 1722447859215) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1723173654613) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1723173655355) (:by |rJG4IHzWf) (:text |::)
                                          |L $ %{} :Leaf (:at 1723173658127) (:by |rJG4IHzWf) (:text |:states)
                                          |P $ %{} :Leaf (:at 1723173658503) (:by |rJG4IHzWf) (:text |cursor)
                                          |T $ %{} :Expr (:at 1722447859215) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |->)
                                              |b $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Expr (:at 1722447859215) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |:answer)
                                                  |h $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |@*text)
                                              |l $ %{} :Expr (:at 1722447859215) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |:loading?)
                                                  |h $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |false)
                                              |o $ %{} :Expr (:at 1722447859215) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1722447859215) (:by |rJG4IHzWf) (:text |:done?)
                                                  |h $ %{} :Leaf (:at 1722448250705) (:by |rJG4IHzWf) (:text |true)
                                  |l $ %{} :Expr (:at 1723137374067) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1723137374808) (:by |rJG4IHzWf) (:text |let)
                                      |L $ %{} :Expr (:at 1723137416402) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1723137375217) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1723137974437) (:by |rJG4IHzWf) (:text |candidate0)
                                              |b $ %{} :Expr (:at 1723137380973) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |->)
                                                  |b $ %{} :Expr (:at 1723137380973) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |.!slice)
                                                      |b $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |value)
                                                      |h $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |6)
                                                  |e $ %{} :Expr (:at 1723137672216) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723137674405) (:by |rJG4IHzWf) (:text |.!trim)
                                                  |f $ %{} :Expr (:at 1723138235994) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723138240172) (:by |rJG4IHzWf) (:text |first-line)
                                                  |h $ %{} :Expr (:at 1723137380973) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |js/JSON.parse)
                                                  |l $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |.-candidates)
                                                  |o $ %{} :Leaf (:at 1723137380973) (:by |rJG4IHzWf) (:text |.-0)
                                          |b $ %{} :Expr (:at 1723137391753) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1723138100284) (:by |rJG4IHzWf) (:text |content)
                                              |b $ %{} :Expr (:at 1723137407253) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1723138102079) (:by |rJG4IHzWf) (:text |.-content)
                                                  |T $ %{} :Leaf (:at 1723137976419) (:by |rJG4IHzWf) (:text |candidate0)
                                      |T $ %{} :Expr (:at 1723137417777) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1723137418320) (:by |rJG4IHzWf) (:text |if)
                                          |L $ %{} :Expr (:at 1723137418558) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1723138114308) (:by |rJG4IHzWf) (:text |nil?)
                                              |T $ %{} :Leaf (:at 1723138109237) (:by |rJG4IHzWf) (:text |content)
                                          |P $ %{} :Expr (:at 1723137432603) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |d!)
                                              |h $ %{} :Expr (:at 1723173662379) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1723173663560) (:by |rJG4IHzWf) (:text |::)
                                                  |L $ %{} :Leaf (:at 1723173664752) (:by |rJG4IHzWf) (:text |:states)
                                                  |P $ %{} :Leaf (:at 1723173665224) (:by |rJG4IHzWf) (:text |cursor)
                                                  |T $ %{} :Expr (:at 1723137432603) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |state)
                                                      |h $ %{} :Expr (:at 1723137432603) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |:answer)
                                                          |h $ %{} :Expr (:at 1723137469574) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1723137470405) (:by |rJG4IHzWf) (:text |str)
                                                              |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |@*text)
                                                              |b $ %{} :Leaf (:at 1723137476174) (:by |rJG4IHzWf) (:text |&newline)
                                                              |e $ %{} :Leaf (:at 1723138001847) (:by |rJG4IHzWf) (:text "|\"[STOPPED: ")
                                                              |h $ %{} :Expr (:at 1723138119344) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1723138121086) (:by |rJG4IHzWf) (:text |.-finishReason)
                                                                  |b $ %{} :Leaf (:at 1723138124567) (:by |rJG4IHzWf) (:text |candidate0)
                                                              |l $ %{} :Leaf (:at 1723137484158) (:by |rJG4IHzWf) (:text "|\"]")
                                                      |l $ %{} :Expr (:at 1723137432603) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |:loading?)
                                                          |h $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |false)
                                                      |o $ %{} :Expr (:at 1723137432603) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1723137432603) (:by |rJG4IHzWf) (:text |:done?)
                                                          |h $ %{} :Leaf (:at 1723137456297) (:by |rJG4IHzWf) (:text |true)
                                          |T $ %{} :Expr (:at 1722447861509) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1722448041120) (:by |rJG4IHzWf) (:text |let)
                                              |H $ %{} :Expr (:at 1722448042069) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1722448041599) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722448041599) (:by |rJG4IHzWf) (:text |content)
                                                      |b $ %{} :Expr (:at 1722448041599) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722448041599) (:by |rJG4IHzWf) (:text |->)
                                                          |f $ %{} :Leaf (:at 1723137978688) (:by |rJG4IHzWf) (:text |candidate0)
                                                          |l $ %{} :Leaf (:at 1723137969776) (:by |rJG4IHzWf) (:text |.-content)
                                                          |s $ %{} :Leaf (:at 1722448041599) (:by |rJG4IHzWf) (:text |.-parts)
                                                          |t $ %{} :Leaf (:at 1722448041599) (:by |rJG4IHzWf) (:text |.-0)
                                                          |u $ %{} :Leaf (:at 1722448041599) (:by |rJG4IHzWf) (:text |.-text)
                                              |J $ %{} :Expr (:at 1722448044752) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722448044752) (:by |rJG4IHzWf) (:text |swap!)
                                                  |b $ %{} :Leaf (:at 1722448044752) (:by |rJG4IHzWf) (:text |*text)
                                                  |h $ %{} :Leaf (:at 1722448044752) (:by |rJG4IHzWf) (:text |str)
                                                  |l $ %{} :Leaf (:at 1722448044752) (:by |rJG4IHzWf) (:text |content)
                                              |L $ %{} :Expr (:at 1722447863571) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |d!)
                                                  |h $ %{} :Expr (:at 1723173667608) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1723173668065) (:by |rJG4IHzWf) (:text |::)
                                                      |H $ %{} :Leaf (:at 1723173670237) (:by |rJG4IHzWf) (:text |:states)
                                                      |L $ %{} :Leaf (:at 1723173669033) (:by |rJG4IHzWf) (:text |cursor)
                                                      |T $ %{} :Expr (:at 1722447863571) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |->)
                                                          |b $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |state)
                                                          |h $ %{} :Expr (:at 1722447863571) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |:answer)
                                                              |h $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |@*text)
                                                          |l $ %{} :Expr (:at 1722447863571) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |:loading?)
                                                              |h $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |false)
                                                          |o $ %{} :Expr (:at 1722447863571) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1722447863571) (:by |rJG4IHzWf) (:text |:done?)
                                                              |h $ %{} :Leaf (:at 1722448253956) (:by |rJG4IHzWf) (:text |false)
                                              |T $ %{} :Expr (:at 1722447641142) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722447642246) (:by |rJG4IHzWf) (:text |recur)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1695659797743) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1695659799627) (:by |rJG4IHzWf) (:text |css)
                |t $ %{} :Expr (:at 1695659844346) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695659847085) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1695659847949) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1695659848197) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695659850247) (:by |rJG4IHzWf) (:text |defstyle)
                |u $ %{} :Expr (:at 1722448116666) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1722448121297) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1722448122163) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1722448122362) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1722448122671) (:by |rJG4IHzWf) (:text |hsl)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |xT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1723173404175) (:by |rJG4IHzWf) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1723173410653) (:by |rJG4IHzWf) (:text |comp-inspect)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |zD $ %{} :Expr (:at 1722410482268) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1722410483524) (:by |rJG4IHzWf) (:text "|\"axios")
                    |b $ %{} :Leaf (:at 1722410490757) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1722410491526) (:by |rJG4IHzWf) (:text |axios)
                |zP $ %{} :Expr (:at 1722425480903) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1722425485361) (:by |rJG4IHzWf) (:text |respo-md.comp.md)
                    |b $ %{} :Leaf (:at 1722425486495) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1722425486739) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1722425491341) (:by |rJG4IHzWf) (:text |comp-md-block)
                        |b $ %{} :Leaf (:at 1722963155292) (:by |rJG4IHzWf) (:text |style-code-block)
                |zY $ %{} :Expr (:at 1722481920058) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1722481923050) (:by |rJG4IHzWf) (:text |respo-ui.comp)
                    |b $ %{} :Leaf (:at 1722481924032) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1722481924307) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1722481924530) (:by |rJG4IHzWf) (:text |comp-copy)
                        |b $ %{} :Leaf (:at 1722965064837) (:by |rJG4IHzWf) (:text |comp-close)
                |ze $ %{} :Expr (:at 1723104975584) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1723104991690) (:by |rJG4IHzWf) (:text "|\"../extension/get-selected")
                    |b $ %{} :Leaf (:at 1723104992655) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1723104992888) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1723105000472) (:by |rJG4IHzWf) (:text |get-selected)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |chrome-extension? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723172919449) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1723172916349) (:by |rJG4IHzWf) (:text |chrome-extension?)
              |h $ %{} :Expr (:at 1723172944417) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1723172948256) (:by |rJG4IHzWf) (:text |and)
                  |T $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723172926530) (:by |rJG4IHzWf) (:text |some?)
                      |b $ %{} :Leaf (:at 1723172943024) (:by |rJG4IHzWf) (:text |js/chrome)
                  |b $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723172926530) (:by |rJG4IHzWf) (:text |some?)
                      |b $ %{} :Leaf (:at 1723172953620) (:by |rJG4IHzWf) (:text |js/chrome.runtime)
                  |h $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723172926530) (:by |rJG4IHzWf) (:text |some?)
                      |b $ %{} :Leaf (:at 1723172962879) (:by |rJG4IHzWf) (:text |js/chrome.runtime.id)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1658121345573) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1722408886509) (:by |rJG4IHzWf) (:text "|\"msg-buffer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1692546015701) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |listen-extension! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723173038708) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723173038708) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1723173038708) (:by |rJG4IHzWf) (:text |listen-extension!)
              |h $ %{} :Expr (:at 1723173038708) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1723173040157) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723173073735) (:by |rJG4IHzWf) (:text |js/chrome.runtime.onMessage.addListener)
                  |b $ %{} :Expr (:at 1723173078523) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1723173079494) (:by |rJG4IHzWf) (:text |fn)
                      |T $ %{} :Expr (:at 1723173075164) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723173076777) (:by |rJG4IHzWf) (:text |message)
                          |b $ %{} :Leaf (:at 1723173077930) (:by |rJG4IHzWf) (:text |sender)
                          |h $ %{} :Leaf (:at 1723173090308) (:by |rJG4IHzWf) (:text |respond!)
                      |h $ %{} :Expr (:at 1723173143646) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723173145542) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Expr (:at 1723173145835) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723173146422) (:by |rJG4IHzWf) (:text |=)
                              |b $ %{} :Leaf (:at 1723173151154) (:by |rJG4IHzWf) (:text "|\"menu-trigger")
                              |h $ %{} :Expr (:at 1723173153114) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723173357943) (:by |rJG4IHzWf) (:text |.-action)
                                  |b $ %{} :Leaf (:at 1723173361116) (:by |rJG4IHzWf) (:text |message)
                          |h $ %{} :Expr (:at 1723173362936) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723173447860) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1723173451729) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1723173448347) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1723173451364) (:by |rJG4IHzWf) (:text |content)
                                      |T $ %{} :Expr (:at 1723173700673) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |5 $ %{} :Leaf (:at 1723173715368) (:by |rJG4IHzWf) (:text |str)
                                          |D $ %{} :Leaf (:at 1723174203375) (:by |rJG4IHzWf) (:text "|\"你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n")
                                          |H $ %{} :Leaf (:at 1723173841889) (:by |rJG4IHzWf) (:text |)
                                          |L $ %{} :Leaf (:at 1723173718369) (:by |rJG4IHzWf) (:text |&newline)
                                          |P $ %{} :Leaf (:at 1723173720650) (:by |rJG4IHzWf) (:text |&newline)
                                          |T $ %{} :Expr (:at 1723173367820) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1723173369158) (:by |rJG4IHzWf) (:text |.-content)
                                              |b $ %{} :Leaf (:at 1723173370100) (:by |rJG4IHzWf) (:text |message)
                                  |b $ %{} :Expr (:at 1723173453535) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1723173455063) (:by |rJG4IHzWf) (:text |store)
                                      |b $ %{} :Expr (:at 1723173456519) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1723173457590) (:by |rJG4IHzWf) (:text |:store)
                                          |b $ %{} :Leaf (:at 1723173460557) (:by |rJG4IHzWf) (:text |@*reel)
                                  |h $ %{} :Expr (:at 1723173464286) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1723173466868) (:by |rJG4IHzWf) (:text |cursor)
                                      |b $ %{} :Expr (:at 1723173467230) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1723173467945) (:by |rJG4IHzWf) (:text |[])
                                  |j $ %{} :Expr (:at 1723173515506) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |state0)
                                      |b $ %{} :Expr (:at 1723173515506) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |get-in)
                                          |b $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |store)
                                          |h $ %{} :Expr (:at 1723173515506) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |[])
                                              |b $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |:states)
                                              |h $ %{} :Leaf (:at 1723173515506) (:by |rJG4IHzWf) (:text |:data)
                              |h $ %{} :Expr (:at 1723173517113) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723173517113) (:by |rJG4IHzWf) (:text |submit-message!)
                                  |b $ %{} :Leaf (:at 1723173517113) (:by |rJG4IHzWf) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1723173518932) (:by |rJG4IHzWf) (:text |state0)
                                  |l $ %{} :Leaf (:at 1723173521472) (:by |rJG4IHzWf) (:text |content)
                                  |o $ %{} :Leaf (:at 1723173632238) (:by |rJG4IHzWf) (:text |dispatch!)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yM $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1695833113543) (:by |rJG4IHzWf) (:text ||visibilitychange)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1695833124329) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833125950) (:by |rJG4IHzWf) (:text |if)
                          |L $ %{} :Expr (:at 1695833126511) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695833145858) (:by |rJG4IHzWf) (:text |=)
                              |L $ %{} :Leaf (:at 1695833179425) (:by |rJG4IHzWf) (:text "|\"hidden")
                              |T $ %{} :Leaf (:at 1695833167249) (:by |rJG4IHzWf) (:text |js/document.visibilityState)
                          |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1723138480153) (:by |rJG4IHzWf) (:text |;)
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1688397806134) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688397806833) (:by |rJG4IHzWf) (:text |::)
                              |T $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                              |b $ %{} :Expr (:at 1688397811073) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |b $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |raw)
              |yR $ %{} :Expr (:at 1723172966777) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723172967107) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Leaf (:at 1723172973092) (:by |rJG4IHzWf) (:text |config/chrome-extension?)
                  |h $ %{} :Expr (:at 1723172974998) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723173037074) (:by |rJG4IHzWf) (:text |listen-extension!)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1695659910770) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695833186592) (:by |rJG4IHzWf) (:text |println)
                  |b $ %{} :Leaf (:at 1695833194980) (:by |rJG4IHzWf) (:text "|\"Saved at")
                  |e $ %{} :Expr (:at 1695833205162) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695833211484) (:by |rJG4IHzWf) (:text |.!toISOString)
                      |T $ %{} :Expr (:at 1695833196620) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833204629) (:by |rJG4IHzWf) (:text |new)
                          |T $ %{} :Leaf (:at 1695833201386) (:by |rJG4IHzWf) (:text |js/Date)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1679237703306) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                        |n $ %{} :Leaf (:at 1723173491003) (:by |rJG4IHzWf) (:text |submit-message!)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688397777636) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397783265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1688397785768) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1688397786090) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1688397788043) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1688397788324) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397789504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688397790936) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1688397780767) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688397781225) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659902074) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
