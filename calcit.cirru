
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/ |respo-feather.calcit/
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
          :examples $ []
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1744996557767) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1744996559066) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1744996557767) (:by |rJG4IHzWf) (:text |*gen-ai-new)
              |h $ %{} :Leaf (:at 1744996560550) (:by |rJG4IHzWf) (:text |nil)
          :examples $ []
        |*image-cache $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1747843990738) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1747843992029) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1747843990738) (:by |rJG4IHzWf) (:text |*image-cache)
              |h $ %{} :Leaf (:at 1747843993981) (:by |rJG4IHzWf) (:text |nil)
          :examples $ []
        |*openai $ %{} :CodeEntry (:doc "|called openai sdk, but actually for openrouter")
          :code $ %{} :Expr (:at 1745685331700) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1745685733719) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1745685331700) (:by |rJG4IHzWf) (:text |*openai)
              |h $ %{} :Leaf (:at 1745685341848) (:by |rJG4IHzWf) (:text |nil)
          :examples $ []
        |call-anthropic-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1728102945654) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1728102945654) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1728102945654) (:by |rJG4IHzWf) (:text |call-anthropic-msg!)
              |h $ %{} :Expr (:at 1728103417200) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103417200) (:by |rJG4IHzWf) (:text |cursor)
                  |b $ %{} :Leaf (:at 1728103417200) (:by |rJG4IHzWf) (:text |state)
                  |h $ %{} :Leaf (:at 1728103417200) (:by |rJG4IHzWf) (:text |prompt-text)
                  |k $ %{} :Leaf (:at 1740505057826) (:by |rJG4IHzWf) (:text |model)
                  |m $ %{} :Leaf (:at 1740505441993) (:by |rJG4IHzWf) (:text |thinking?)
                  |o $ %{} :Leaf (:at 1728103417200) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |abort)
              |q $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:loading?)
                              |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |true)
              |r $ %{} :Expr (:at 1728113929366) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728113930465) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1728113931608) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728113932470) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1728113943171) (:by |rJG4IHzWf) (:text |:change-model)
              |s $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |get-selected)
                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.replace)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"<未找到内容>")
                      |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |result)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!post)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |axios)
                                  |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1728103650378) (:by |rJG4IHzWf) (:text "|\"https://sa.chenyong.life/v1/messages")
                                  |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-object)
                                      |h $ %{} :Expr (:at 1728103794579) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103795725) (:by |rJG4IHzWf) (:text |:model)
                                          |b $ %{} :Expr (:at 1728103802610) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103808124) (:by |rJG4IHzWf) (:text |get-env)
                                              |X $ %{} :Leaf (:at 1728103816357) (:by |rJG4IHzWf) (:text "|\"claude-model")
                                              |b $ %{} :Expr (:at 1740505140502) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1740505141101) (:by |rJG4IHzWf) (:text |or)
                                                  |L $ %{} :Leaf (:at 1740505141755) (:by |rJG4IHzWf) (:text |model)
                                                  |T $ %{} :Leaf (:at 1740505144456) (:by |rJG4IHzWf) (:text "|\"claude-3-5-sonnet-latest")
                                      |l $ %{} :Expr (:at 1728103820217) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728108999630) (:by |rJG4IHzWf) (:text |:max_tokens)
                                          |b $ %{} :Leaf (:at 1728103824997) (:by |rJG4IHzWf) (:text |1024)
                                      |o $ %{} :Expr (:at 1728103826552) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103830677) (:by |rJG4IHzWf) (:text |:stream)
                                          |b $ %{} :Leaf (:at 1728103831774) (:by |rJG4IHzWf) (:text |true)
                                      |p $ %{} :Expr (:at 1740505378217) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1740505381557) (:by |rJG4IHzWf) (:text |:thinking)
                                          |b $ %{} :Expr (:at 1740505444084) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1740505444951) (:by |rJG4IHzWf) (:text |if)
                                              |L $ %{} :Leaf (:at 1740505445322) (:by |rJG4IHzWf) (:text |thinking?)
                                              |T $ %{} :Expr (:at 1740505382267) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1740505401638) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1740505389855) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1740505394904) (:by |rJG4IHzWf) (:text |:type)
                                                      |b $ %{} :Leaf (:at 1740505398231) (:by |rJG4IHzWf) (:text "|\"enabled")
                                                  |h $ %{} :Expr (:at 1740505403199) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1740505407608) (:by |rJG4IHzWf) (:text |:budget_tokens)
                                                      |b $ %{} :Leaf (:at 1740505412735) (:by |rJG4IHzWf) (:text |2000)
                                              |b $ %{} :Leaf (:at 1740505452856) (:by |rJG4IHzWf) (:text |js/undefined)
                                      |q $ %{} :Expr (:at 1728103833150) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103835251) (:by |rJG4IHzWf) (:text |:messages)
                                          |b $ %{} :Expr (:at 1728103836237) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103837363) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1728103840270) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728103842410) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1728103843647) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728103846957) (:by |rJG4IHzWf) (:text |:role)
                                                      |b $ %{} :Leaf (:at 1728103849287) (:by |rJG4IHzWf) (:text "|\"user")
                                                  |h $ %{} :Expr (:at 1728103850383) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728103851830) (:by |rJG4IHzWf) (:text |:content)
                                                      |b $ %{} :Leaf (:at 1728103853998) (:by |rJG4IHzWf) (:text |content)
                                  |o $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:params)
                                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-object)
                                      |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:headers)
                                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-object)
                                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1728103774282) (:by |rJG4IHzWf) (:text |;)
                                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:Accept)
                                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"text/event-stream")
                                              |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |;)
                                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:Content-Type)
                                                  |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"application/json")
                                              |l $ %{} :Expr (:at 1728103747022) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1728103757939) (:by |rJG4IHzWf) (:text "|\"x-api-key")
                                                  |T $ %{} :Expr (:at 1728103748382) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728104562217) (:by |rJG4IHzWf) (:text |get-anthropic-key!)
                                              |o $ %{} :Expr (:at 1728103763088) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728103763692) (:by |rJG4IHzWf) (:text "|\"anthropic-version")
                                                  |b $ %{} :Leaf (:at 1728108087082) (:by |rJG4IHzWf) (:text "|\"2023-06-01")
                                              |q $ %{} :Expr (:at 1728108834264) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728108835232) (:by |rJG4IHzWf) (:text "|\"anthropic-dangerous-direct-browser-access")
                                                  |b $ %{} :Leaf (:at 1728108836584) (:by |rJG4IHzWf) (:text |true)
                                      |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:responseType)
                                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"stream")
                                      |o $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:adapter)
                                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text "|\"fetch")
                                      |q $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:signal)
                                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |abort)
                                                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |new)
                                                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js/AbortController)
                                              |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |reset!)
                                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |*abort-control)
                                                  |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |abort)
                                              |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-signal)
                                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |abort)
                      |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |stream)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-data)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |result)
                      |o $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |reader)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!pipeThrough)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |stream)
                                  |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js/TextDecoderStream)
                              |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!getReader)
                      |q $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Expr (:at 1728113998292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1728113999078) (:by |rJG4IHzWf) (:text |str)
                                  |T $ %{} :Leaf (:at 1728113997468) (:by |rJG4IHzWf) (:text "|\"Claude AI:")
                                  |b $ %{} :Leaf (:at 1728114001629) (:by |rJG4IHzWf) (:text |&newline)
                                  |h $ %{} :Leaf (:at 1728114002686) (:by |rJG4IHzWf) (:text |&newline)
                      |s $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |;)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |reading)
                          |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!read)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |reader)
                      |t $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |;)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |answer)
                          |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |result)
                              |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-data)
                              |l $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-candidates)
                              |o $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-0)
                              |q $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-content)
                              |s $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-parts)
                              |t $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-0)
                              |u $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-text)
                  |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |;)
                      |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |d!)
                      |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |w-log)
                                      |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |answer)
                              |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |apply-args)
                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                      |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |fn)
                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                          |h $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |hint-fn)
                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |async)
                          |l $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |info)
                                      |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |js-await)
                                          |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.!read)
                                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |reader)
                                  |b $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |value)
                                      |b $ %{} :Expr (:at 1728113206649) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1728113788609) (:by |rJG4IHzWf) (:text |wo-js-log)
                                          |T $ %{} :Expr (:at 1728103434674) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |.-value)
                                              |b $ %{} :Leaf (:at 1728103434674) (:by |rJG4IHzWf) (:text |info)
                                  |j $ %{} :Expr (:at 1728112824694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728112825574) (:by |rJG4IHzWf) (:text |done?)
                                      |b $ %{} :Expr (:at 1728112827077) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728112837588) (:by |rJG4IHzWf) (:text |.-done)
                                          |b $ %{} :Leaf (:at 1728112838652) (:by |rJG4IHzWf) (:text |info)
                              |e $ %{} :Expr (:at 1728112474846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1728113784734) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1728112476801) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1728112480589) (:by |rJG4IHzWf) (:text "|\"VALUE")
                                  |e $ %{} :Leaf (:at 1728112731328) (:by |rJG4IHzWf) (:text |info)
                              |h $ %{} :Expr (:at 1728112843329) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1728112843918) (:by |rJG4IHzWf) (:text |if)
                                  |L $ %{} :Expr (:at 1728112966059) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1728113786764) (:by |rJG4IHzWf) (:text |wo-log)
                                      |T $ %{} :Leaf (:at 1728112847919) (:by |rJG4IHzWf) (:text |done?)
                                  |P $ %{} :Expr (:at 1728112849226) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728112850412) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1728112852440) (:by |rJG4IHzWf) (:text |:unit)
                                  |T $ %{} :Expr (:at 1728112853864) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1728112854343) (:by |rJG4IHzWf) (:text |do)
                                      |L $ %{} :Expr (:at 1728112969052) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1730141378896) (:by |rJG4IHzWf) (:text |;)
                                          |T $ %{} :Leaf (:at 1728112969981) (:by |rJG4IHzWf) (:text |println)
                                          |b $ %{} :Leaf (:at 1728112972075) (:by |rJG4IHzWf) (:text "|\"processing")
                                      |T $ %{} :Expr (:at 1728113294763) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1728113295542) (:by |rJG4IHzWf) (:text |let)
                                          |L $ %{} :Expr (:at 1728113297088) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |events)
                                                  |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |value)
                                                      |h $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |.split-lines)
                                                      |l $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |filter)
                                                          |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |fn)
                                                              |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |s)
                                                              |h $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |.starts-with?)
                                                                  |b $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |s)
                                                                  |h $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text "|\"data: ")
                                                      |o $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |map)
                                                          |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |fn)
                                                              |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |s)
                                                              |h $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |->)
                                                                  |b $ %{} :Expr (:at 1728113295963) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |.strip-prefix)
                                                                      |b $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |s)
                                                                      |h $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text "|\"data: ")
                                                                  |h $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |js/JSON.parse)
                                                                  |l $ %{} :Leaf (:at 1728113295963) (:by |rJG4IHzWf) (:text |to-calcit-data)
                                          |T $ %{} :Expr (:at 1728111856083) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1728111863661) (:by |rJG4IHzWf) (:text |apply-args)
                                              |L $ %{} :Expr (:at 1728111867709) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1728111868468) (:by |rJG4IHzWf) (:text |events)
                                              |T $ %{} :Expr (:at 1728111873896) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1728111874477) (:by |rJG4IHzWf) (:text |fn)
                                                  |L $ %{} :Expr (:at 1728111874740) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1728111875681) (:by |rJG4IHzWf) (:text |xs)
                                                  |T $ %{} :Expr (:at 1728112187749) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1728112200516) (:by |rJG4IHzWf) (:text |list-match)
                                                      |L $ %{} :Leaf (:at 1728112203092) (:by |rJG4IHzWf) (:text |xs)
                                                      |P $ %{} :Expr (:at 1728112205096) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1728112293961) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                          |b $ %{} :Expr (:at 1728113082375) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1730141390908) (:by |rJG4IHzWf) (:text |;nil)
                                                              |T $ %{} :Leaf (:at 1728113084588) (:by |rJG4IHzWf) (:text |println)
                                                              |b $ %{} :Leaf (:at 1728113097254) (:by |rJG4IHzWf) (:text "|\"no thing to handle in this Loop")
                                                      |R $ %{} :Expr (:at 1728112225056) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1728112230511) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1728112231283) (:by |rJG4IHzWf) (:text |x0)
                                                              |b $ %{} :Leaf (:at 1728112233121) (:by |rJG4IHzWf) (:text |xss)
                                                          |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |let)
                                                              |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1728112816599) (:by |rJG4IHzWf) (:text |stop?)
                                                                      |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |=)
                                                                          |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |get)
                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |x0)
                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text "|\"type")
                                                                          |h $ %{} :Leaf (:at 1728112352126) (:by |rJG4IHzWf) (:text "|\"message_stop")
                                                              |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728113797765) (:by |rJG4IHzWf) (:text |wo-js-log)
                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |x0)
                                                              |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |if)
                                                                  |b $ %{} :Leaf (:at 1728112818305) (:by |rJG4IHzWf) (:text |stop?)
                                                                  |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |d!)
                                                                      |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |::)
                                                                          |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:states)
                                                                          |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |cursor)
                                                                          |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |->)
                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |state)
                                                                              |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:answer)
                                                                                  |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |@*text)
                                                                              |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:loading?)
                                                                                  |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |false)
                                                                              |o $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:done?)
                                                                                  |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |true)
                                                                  |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |let)
                                                                      |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |content)
                                                                              |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |get-in)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |x0)
                                                                                  |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |[])
                                                                                      |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text "|\"delta")
                                                                                      |l $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text "|\"text")
                                                                      |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |if)
                                                                          |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |nil?)
                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |content)
                                                                          |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |do)
                                                                              |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |;nil)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |d!)
                                                                                  |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |::)
                                                                                      |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:states)
                                                                                      |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |cursor)
                                                                                      |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |->)
                                                                                          |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |state)
                                                                                          |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:answer)
                                                                                              |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                                :data $ {}
                                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |str)
                                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |@*text)
                                                                                                  |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |&newline)
                                                                                                  |l $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text "|\"[STOPPED: ")
                                                                                                  |o $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                                    :data $ {}
                                                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |.-finishReason)
                                                                                                      |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |candidate0)
                                                                                                  |q $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text "|\"]")
                                                                                          |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:loading?)
                                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |false)
                                                                                          |o $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:done?)
                                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |true)
                                                                              |e $ %{} :Expr (:at 1728112368180) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112370401) (:by |rJG4IHzWf) (:text |println)
                                                                                  |b $ %{} :Leaf (:at 1728112373147) (:by |rJG4IHzWf) (:text "|\"content is nil")
                                                                              |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |recur)
                                                                                  |b $ %{} :Leaf (:at 1728112242166) (:by |rJG4IHzWf) (:text |xss)
                                                                          |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |let)
                                                                              |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                              |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |swap!)
                                                                                  |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |*text)
                                                                                  |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |str)
                                                                                  |l $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |content)
                                                                              |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |d!)
                                                                                  |b $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |::)
                                                                                      |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:states)
                                                                                      |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |cursor)
                                                                                      |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |->)
                                                                                          |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |state)
                                                                                          |h $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:answer)
                                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |@*text)
                                                                                          |l $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:loading?)
                                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |false)
                                                                                          |o $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |assoc)
                                                                                              |b $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |:done?)
                                                                                              |h $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |false)
                                                                              |o $ %{} :Expr (:at 1728112235160) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1728112235160) (:by |rJG4IHzWf) (:text |recur)
                                                                                  |b $ %{} :Leaf (:at 1728112239625) (:by |rJG4IHzWf) (:text |xss)
                                      |b $ %{} :Expr (:at 1728113171851) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728112856505) (:by |rJG4IHzWf) (:text |recur)
          :examples $ []
        |call-flash-imagen-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |call-flash-imagen-msg!)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |variant)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hint-fn)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |async)
              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil?)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*gen-ai-new)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |GoogleGenAI)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:apiKey)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-gemini-key!)
              |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/document.querySelector)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\".show-image")
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!setAttribute)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"src")
                      |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
              |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |deref)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/console.warn)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Aborting prev")
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!abort)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
              |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |clear-image-cache!)
              |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
              |l $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |selected)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-selected)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/console.log)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!replace)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"{{selected}}")
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |selected)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"<未找到选中内容>")
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |sdk-result)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!generateContent)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-models)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"gemini-2.5-flash-image")
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:contents)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:config)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:httpOptions)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:baseUrl)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||https://ja.chenyong.life)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:signal)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/AbortController)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-signal)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:responseModalities)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-array)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-TEXT)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |Modality)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-IMAGE)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |Modality)
                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |atom)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |sdk-result)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-candidates)
                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-0)
                          |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-content)
                          |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-parts)
                          |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!forEach)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |_a)
                                      |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |_b)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |some?)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |swap!)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-data)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-inlineData)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-blob)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |base64ToBlob)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-data)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-data)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/URL.createObjectURL)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-blob)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/document.querySelector)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\".show-image")
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!setAttribute)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"src")
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*image-cache)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |swap!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"(image ready)")
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
          :examples $ []
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |call-genai-msg!)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |variant)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |search?)
                  |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |think?)
                  |f $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                  |h $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                  |j $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*thinking-text)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hint-fn)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |async)
              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil?)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*gen-ai-new)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |GoogleGenAI)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:apiKey)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-gemini-key!)
              |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |deref)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/console.warn)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Aborting prev")
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!abort)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
              |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/setTimeout)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states-merge)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
              |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |selected)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.includes?)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"{{selected}}")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-selected)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/console.log)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |pick-model)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |variant)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!replace)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"{{selected}}")
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |selected)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"<未找到选中内容>")
                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |json?)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!includes)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"{{json}}")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!includes)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"{{JSON}}")
                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |pro?)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!includes)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"pro")
                      |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |has-url?)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!includes)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"http://")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!includes)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"https://")
                      |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |sdk-result)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!generateContentStream)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-models)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:contents)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-array)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:role)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"user")
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:parts)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-array)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:config)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/Object.assign)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinkingConfig)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |think?)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinkingBudget)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-env)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"think-budget")
                                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |pro?)
                                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |3200)
                                                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |800)
                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:includeThoughts)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |think?)
                                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinkingBudget)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:includeThoughts)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:httpOptions)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:baseUrl)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||https://ja.chenyong.life)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:tools)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |t)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-array)
                                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |search?)
                                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:googleSearch)
                                                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |has-url?)
                                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:urlContext)
                                                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!filter)
                                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |x)
                                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |&)
                                                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |_a)
                                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |x)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-length)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |t)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/undefined)
                                                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |t)
                                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:abortSignal)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/AbortController)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-signal)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |json?)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"responseMimeType")
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"application/json")
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/undefined)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-for-await)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |sdk-result)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |?)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |some?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |part)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/chunk.candidates?.[0]?.content?.parts?.[0])
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |is-thinking?)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |some?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |part)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-thought)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |part)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |t)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |some?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |part)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-text)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |part)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-text)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |t)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chunk)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.?-promptFeedback)
                                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.?-blockReason)
                                                      |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||__BLANK__)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |is-thinking?)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |swap!)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*thinking-text)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |swap!)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states-merge)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*thinking-text)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states-merge)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*thinking-text)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states-merge)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*thinking-text)
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
          :examples $ []
        |call-imagen-4-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |call-imagen-4-msg!)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |variant)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hint-fn)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |async)
              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil?)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*gen-ai-new)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |GoogleGenAI)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:apiKey)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-gemini-key!)
              |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/document.querySelector)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\".show-image")
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!removeAttribute)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"src")
              |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |deref)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/console.warn)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Aborting prev")
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!abort)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
              |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |clear-image-cache!)
              |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
              |l $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |selected)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-selected)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*gen-ai-new)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ai)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |response)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!generateImages)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-models)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |gen-ai)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"imagen-4.0-generate-001")
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:prompt)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |prompt-text)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:config)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:numberOfImages)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |1)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:includeRaiReason)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:httpOptions)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:baseUrl)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||https://ja.chenyong.life)
                                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:signal)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |new)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/AbortController)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*abort-control)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-signal)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |abort)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |atom)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if-let)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-data)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |response)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-generatedImages)
                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-0)
                              |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-image)
                              |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-imageBytes)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-blob)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |base64ToBlob)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-data)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/URL.createObjectURL)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |image-blob)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/document.querySelector)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\".show-image")
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reset!)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*image-cache)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!setAttribute)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"src")
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |url)
                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |swap!)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |*text)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"(image ready)")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |@*text)
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
          :examples $ []
        |call-openrouter! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1745685220750) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1745685235599) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1745685227473) (:by |rJG4IHzWf) (:text |call-openrouter!)
              |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |state)
                  |l $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |prompt-text)
                  |m $ %{} :Leaf (:at 1745685454534) (:by |rJG4IHzWf) (:text |variant)
                  |n $ %{} :Leaf (:at 1745685801126) (:by |rJG4IHzWf) (:text |thinking?)
                  |o $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                  |q $ %{} :Leaf (:at 1748025578181) (:by |rJG4IHzWf) (:text |*text)
              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |nil?)
                      |b $ %{} :Leaf (:at 1745685325881) (:by |rJG4IHzWf) (:text |@*openai)
                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |reset!)
                      |b $ %{} :Leaf (:at 1745685329180) (:by |rJG4IHzWf) (:text |*openai)
                      |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |new)
                          |b $ %{} :Leaf (:at 1745685348981) (:by |rJG4IHzWf) (:text |OpenAI)
                          |h $ %{} :Expr (:at 1745685363477) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1745685369220) (:by |rJG4IHzWf) (:text |js-object)
                              |T $ %{} :Expr (:at 1745685371366) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1745685373515) (:by |rJG4IHzWf) (:text |:baseURL)
                                  |L $ %{} :Leaf (:at 1745687249358) (:by |rJG4IHzWf) (:text "|\"https://openrouter.ai/api/v1")
                              |b $ %{} :Expr (:at 1745685376806) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1745685383329) (:by |rJG4IHzWf) (:text |:apiKey)
                                  |T $ %{} :Expr (:at 1745685378277) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685378277) (:by |rJG4IHzWf) (:text |get-openrouter-key!)
                              |h $ %{} :Expr (:at 1745685385022) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685392346) (:by |rJG4IHzWf) (:text |:defaultHeaders)
                                  |b $ %{} :Expr (:at 1745685392956) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685395637) (:by |rJG4IHzWf) (:text |js-object)
                              |l $ %{} :Expr (:at 1745685898763) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685900533) (:by |rJG4IHzWf) (:text |:dangerouslyAllowBrowser)
                                  |b $ %{} :Leaf (:at 1745685901358) (:by |rJG4IHzWf) (:text |true)
              |q $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |abort)
              |s $ %{} :Expr (:at 1747976841153) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1747976843908) (:by |rJG4IHzWf) (:text |js/setTimeout)
                  |T $ %{} :Expr (:at 1747976844847) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1747976845312) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1747976845641) (:by |rJG4IHzWf)
                        :data $ {}
                      |T $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |::)
                              |b $ %{} :Leaf (:at 1752513220560) (:by |rJG4IHzWf) (:text |:states-merge)
                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                              |j $ %{} :Leaf (:at 1752513222404) (:by |rJG4IHzWf) (:text |state)
                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1752513224744) (:by |rJG4IHzWf) (:text |{})
                                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:answer)
                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |nil)
                                  |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:loading?)
                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |true)
              |t $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |get-selected)
                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685501865) (:by |rJG4IHzWf) (:text |openai)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |ai)
                                      |b $ %{} :Leaf (:at 1745685504271) (:by |rJG4IHzWf) (:text |@*openai)
                              |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1745687886013) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |ai)
                              |l $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |ai)
                      |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |.!replace)
                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"<未找到选中内容>")
                      |o $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |json?)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"{{json}}")
                              |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"{{JSON}}")
                      |q $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1745686727645) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1745686728372) (:by |rJG4IHzWf) (:text |->)
                                  |L $ %{} :Leaf (:at 1745686730368) (:by |rJG4IHzWf) (:text |openai)
                                  |P $ %{} :Leaf (:at 1745686732505) (:by |rJG4IHzWf) (:text |.-chat)
                                  |R $ %{} :Leaf (:at 1745686737455) (:by |rJG4IHzWf) (:text |.-completions)
                                  |T $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685579669) (:by |rJG4IHzWf) (:text |.!create)
                                      |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-object)
                                          |X $ %{} :Expr (:at 1745685598490) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685600093) (:by |rJG4IHzWf) (:text |:model)
                                              |b $ %{} :Leaf (:at 1745685621902) (:by |rJG4IHzWf) (:text |variant)
                                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685632633) (:by |rJG4IHzWf) (:text |:messages)
                                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-array)
                                                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-object)
                                                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:role)
                                                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"user")
                                                      |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1745685634682) (:by |rJG4IHzWf) (:text |:content)
                                                          |b $ %{} :Leaf (:at 1745685639066) (:by |rJG4IHzWf) (:text |content)
                                          |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1745685642069) (:by |rJG4IHzWf) (:text |;)
                                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:generationConfig)
                                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |if)
                                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |json?)
                                                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-object)
                                                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"responseMimeType")
                                                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"application/json")
                                                  |l $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js/undefined)
                                          |l $ %{} :Expr (:at 1745685653269) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685655281) (:by |rJG4IHzWf) (:text |:stream)
                                              |b $ %{} :Leaf (:at 1745685656891) (:by |rJG4IHzWf) (:text |true)
                                          |q $ %{} :Expr (:at 1745686448929) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745686451078) (:by |rJG4IHzWf) (:text |:headers)
                                              |b $ %{} :Expr (:at 1745686451445) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745686456410) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1745686456788) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745686458573) (:by |rJG4IHzWf) (:text |:HTTP-Referer)
                                                      |b $ %{} :Leaf (:at 1745686465794) (:by |rJG4IHzWf) (:text |js/location.host)
                                      |l $ %{} :Expr (:at 1745687617050) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1745687621440) (:by |rJG4IHzWf) (:text |js-object)
                                          |T $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |:signal)
                                              |b $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |let)
                                                  |b $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |abort)
                                                          |b $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |new)
                                                              |b $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |js/AbortController)
                                                  |h $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |reset!)
                                                      |b $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |*abort-control)
                                                      |h $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |abort)
                                                  |l $ %{} :Expr (:at 1745687616641) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |.-signal)
                                                      |b $ %{} :Leaf (:at 1745687616641) (:by |rJG4IHzWf) (:text |abort)
                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |js-await)
                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685687227) (:by |rJG4IHzWf) (:text |js-for-await)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |sdk-result)
                          |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |?)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |chunk)
                              |e $ %{} :Expr (:at 1745685702662) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1745687461040) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1745685705968) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1745685709512) (:by |rJG4IHzWf) (:text "|\"[CHUNK]")
                                  |h $ %{} :Leaf (:at 1745685712183) (:by |rJG4IHzWf) (:text |chunk)
                              |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |some?)
                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |chunk)
                                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |do)
                                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |swap!)
                                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |*text)
                                          |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |str)
                                          |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745686798491) (:by |rJG4IHzWf) (:text |->)
                                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |chunk)
                                              |h $ %{} :Leaf (:at 1745686802284) (:by |rJG4IHzWf) (:text |.-choices)
                                              |l $ %{} :Leaf (:at 1745686803318) (:by |rJG4IHzWf) (:text |.-0)
                                              |m $ %{} :Leaf (:at 1745687190625) (:by |rJG4IHzWf) (:text |.-delta)
                                              |o $ %{} :Leaf (:at 1745687171972) (:by |rJG4IHzWf) (:text |.-content)
                                              |q $ %{} :Expr (:at 1745686839174) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745686840382) (:by |rJG4IHzWf) (:text |or)
                                                  |b $ %{} :Leaf (:at 1745687199536) (:by |rJG4IHzWf) (:text "|\"")
                                      |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                                          |b $ %{} :Expr (:at 1752513316026) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1752513324188) (:by |rJG4IHzWf) (:text |:states-merge)
                                              |h $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |cursor)
                                              |l $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |state)
                                              |o $ %{} :Expr (:at 1752513316026) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1752513316026) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |:answer)
                                                      |b $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |@*text)
                                                  |h $ %{} :Expr (:at 1752513316026) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |:loading?)
                                                      |b $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |false)
                                                  |l $ %{} :Expr (:at 1752513316026) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |:done?)
                                                      |b $ %{} :Leaf (:at 1752513316026) (:by |rJG4IHzWf) (:text |false)
                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Expr (:at 1752513436936) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |:states-merge)
                                      |h $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |state)
                                      |o $ %{} :Expr (:at 1752513436936) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1752513436936) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |:answer)
                                              |b $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |@*text)
                                          |h $ %{} :Expr (:at 1752513436936) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |:loading?)
                                              |b $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |false)
                                          |l $ %{} :Expr (:at 1752513436936) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |:done?)
                                              |b $ %{} :Leaf (:at 1752513436936) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1752513493109) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |:states-merge)
                          |h $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |state)
                          |o $ %{} :Expr (:at 1752513493109) (:by |rJG4IHzWf)
                            :data $ {}
                              |o $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |{})
                              |q $ %{} :Expr (:at 1752513474970) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |:answer)
                                  |b $ %{} :Leaf (:at 1752513534588) (:by |rJG4IHzWf) (:text |@*text)
                              |s $ %{} :Expr (:at 1752513474970) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |:loading?)
                                  |b $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |false)
                              |t $ %{} :Expr (:at 1752513474970) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |:done?)
                                  |b $ %{} :Leaf (:at 1752513474970) (:by |rJG4IHzWf) (:text |true)
          :examples $ []
        |clear-image-cache! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1747844013247) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1747844013247) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1747844013247) (:by |rJG4IHzWf) (:text |clear-image-cache!)
              |h $ %{} :Expr (:at 1747844013247) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1747844017052) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1747844057915) (:by |rJG4IHzWf) (:text |if-let)
                  |L $ %{} :Expr (:at 1747844059109) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1747844060885) (:by |rJG4IHzWf) (:text |url)
                      |T $ %{} :Leaf (:at 1747844062399) (:by |rJG4IHzWf) (:text |@*image-cache)
                  |T $ %{} :Expr (:at 1747844069075) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1747844069631) (:by |rJG4IHzWf) (:text |do)
                      |T $ %{} :Expr (:at 1747844015526) (:by |rJG4IHzWf)
                        :data $ {}
                          |b $ %{} :Leaf (:at 1747844015526) (:by |rJG4IHzWf) (:text |js/URL.revokeObjectURL)
                          |h $ %{} :Leaf (:at 1747844015526) (:by |rJG4IHzWf) (:text |url)
                      |b $ %{} :Expr (:at 1747844070433) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1747844081462) (:by |rJG4IHzWf) (:text |reset!)
                          |b $ %{} :Leaf (:at 1747844084148) (:by |rJG4IHzWf) (:text |*image-cache)
                          |h $ %{} :Leaf (:at 1747844082795) (:by |rJG4IHzWf) (:text |nil)
          :examples $ []
        |comp-abort $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1743534759425) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |comp-abort)
              |e $ %{} :Expr (:at 1743534761617) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743534797551) (:by |rJG4IHzWf) (:text |t)
              |h $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |span)
                  |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1743617805457) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1743617807209) (:by |rJG4IHzWf) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |css/font-fancy)
                              |b $ %{} :Leaf (:at 1743617814065) (:by |rJG4IHzWf) (:text |css/row-middle)
                              |h $ %{} :Leaf (:at 1743618176497) (:by |rJG4IHzWf) (:text |style-more)
                      |g $ %{} :Expr (:at 1743617935101) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743617936917) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1743617937138) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743617937467) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1743617937765) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743617938781) (:by |rJG4IHzWf) (:text |:cursor)
                                  |b $ %{} :Leaf (:at 1743617939787) (:by |rJG4IHzWf) (:text |:pointer)
                      |l $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |if-let)
                                  |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |abort)
                                      |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |deref)
                                          |b $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |*abort-control)
                                  |h $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |do)
                                      |b $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |js/console.warn)
                                          |b $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                                      |h $ %{} :Expr (:at 1743534755260) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |.!abort)
                                          |b $ %{} :Leaf (:at 1743534755260) (:by |rJG4IHzWf) (:text |abort)
                  |h $ %{} :Expr (:at 1743617777774) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743617784186) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1743617789790) (:by |rJG4IHzWf) (:text |t)
                  |j $ %{} :Expr (:at 1743617925093) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743617926440) (:by |rJG4IHzWf) (:text |=<)
                      |b $ %{} :Leaf (:at 1743617926766) (:by |rJG4IHzWf) (:text |8)
                      |h $ %{} :Leaf (:at 1743617927356) (:by |rJG4IHzWf) (:text |nil)
                  |l $ %{} :Expr (:at 1743617796810) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743617798066) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1743617798777) (:by |rJG4IHzWf) (:text "|\"✕")
                      |h $ %{} :Leaf (:at 1743617965330) (:by |rJG4IHzWf) (:text |style-abort-close)
          :examples $ []
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-container)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |store)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:store)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |store)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:cursor)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |[])
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:gemini)
                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model-plugin)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |use-modal-menu)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:title)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "||Select model")
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:width)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |300)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:backdrop-style)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-card)
                                  |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:backdrop-class)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-backdrop)
                                  |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:confirm-class)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-confirm)
                                  |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:items)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |models-menu)
                                  |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-result)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |result)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:model)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nth)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |result)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |1)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/preset)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/global)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/column)
                                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/fullscreen)
                                  |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/gap8)
                                  |f $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-app-global)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/expand)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-message-area)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/column)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-message-list)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:imagen-4)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:flash-imagen)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |img)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-image)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"show-image")
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:loading?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call-by)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:abort-loading)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-abort)
                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Loading...")
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |blank?)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |blank?)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |blank?)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-thinking)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-md-block)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:thinking)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-md-content)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |blank?)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |json-pattern?)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |pre)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-code-content)
                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:inner-text)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-md-block)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-md-content)
                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row-parted)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row-middle)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/gap8)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call-by)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:abort-streaming)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-abort)
                                                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Streaming...")
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:done?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row-middle)
                                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/gap8)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chrome-extension?)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-fill)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-copy)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:answer)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=<)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |200)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-message-box)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |>>)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:message-box)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |a)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |turn-str)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"-")
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-a-toggler)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:opacity)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:anthropic)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |1)
                                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0.3)
                                  |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:change-model)
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model-plugin)
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |search?)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |think?)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit-message!)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |search?)
                                  |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |think?)
                                  |f $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model)
                                  |h $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |model-plugin.render)
                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dev?)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-reel)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:reel)
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel)
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                      |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dev?)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-inspect)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Store")
                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |store)
                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
          :examples $ []
        |comp-fill $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-fill)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-fill)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |when)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chrome-extension?)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/chrome.runtime.sendMessage)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:action)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||fill-text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |text)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-i)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:send)
                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |12)
                      |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:currentColor)
          :examples $ []
        |comp-message-box $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-message-box)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |picker-el)
                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |[])
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |effect-focus)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-fill)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/center)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-message-box-panel)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/column)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-message-box)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |textarea)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:value)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:placeholder)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Prompt to try LLM...")
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:id)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"message")
                                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/textarea)
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/font-code!)
                                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-textbox)
                                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-input)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:value)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                      |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-keydown)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |and)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |13)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:keycode)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |or)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:meta?)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:ctrl?)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                      |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-focus)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-target)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:event)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-parentElement)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-parentElement)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-classList)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-classList)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!contains)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!add)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!contains)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!add)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                      |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-blur)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-target)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:event)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-parentElement)
                                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-parentElement)
                                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-classList)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |target)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-classList)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!contains)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!remove)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |class-list)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!contains)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!remove)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |box-class)
                                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"focus-within")
                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=<)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |4)
                              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row-parted)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |blank?)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-close)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-clear)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"")
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |->)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/document.querySelector)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"#message")
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.!focus)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |span)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-clear)
                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-gap12)
                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |picker-el)
                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-checkbox)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |input)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:checked)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:type)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"checkbox")
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |<>)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Think")
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/font-fancy)
                                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/row)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-checkbox)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |not)
                                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |input)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:checked)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:type)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"checkbox")
                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |<>)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Search")
                                              |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/font-fancy)
                                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |button)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str-spaced)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css/button)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-submit)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:inner-text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"Submit")
                                              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |;)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |println)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
                                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                          |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |d!)
          :examples $ []
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1723603385630) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1723603387635) (:by |rJG4IHzWf) (:text |defeffect)
              |b $ %{} :Leaf (:at 1723603385630) (:by |rJG4IHzWf) (:text |effect-focus)
              |h $ %{} :Expr (:at 1723603385630) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1723603394606) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723603396940) (:by |rJG4IHzWf) (:text |action)
                  |b $ %{} :Leaf (:at 1723603397935) (:by |rJG4IHzWf) (:text |el)
                  |h $ %{} :Leaf (:at 1723603399765) (:by |rJG4IHzWf) (:text |at?)
              |o $ %{} :Expr (:at 1723603401130) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723603561484) (:by |rJG4IHzWf) (:text |when)
                  |b $ %{} :Expr (:at 1723603402821) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723603402548) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1723603405327) (:by |rJG4IHzWf) (:text |action)
                      |h $ %{} :Leaf (:at 1723603407398) (:by |rJG4IHzWf) (:text |:mount)
                  |h $ %{} :Expr (:at 1746207358366) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1746207360911) (:by |rJG4IHzWf) (:text |js/setTimeout)
                      |T $ %{} :Expr (:at 1746207361619) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1746207363230) (:by |rJG4IHzWf) (:text |fn)
                          |L $ %{} :Expr (:at 1746207363586) (:by |rJG4IHzWf)
                            :data $ {}
                          |T $ %{} :Expr (:at 1723603417488) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1723603471483) (:by |rJG4IHzWf) (:text |.!select)
                              |T $ %{} :Expr (:at 1723603407983) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1723603414646) (:by |rJG4IHzWf) (:text |.!querySelector)
                                  |T $ %{} :Leaf (:at 1723603408532) (:by |rJG4IHzWf) (:text |el)
                                  |b $ %{} :Leaf (:at 1723603416886) (:by |rJG4IHzWf) (:text "|\"textarea")
          :examples $ []
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
                          |T $ %{} :Expr (:at 1729362559327) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1729362560020) (:by |rJG4IHzWf) (:text |->)
                              |L $ %{} :Leaf (:at 1729362564717) (:by |rJG4IHzWf) (:text |tt)
                              |T $ %{} :Expr (:at 1723138249537) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723138253165) (:by |rJG4IHzWf) (:text |.!split)
                                  |h $ %{} :Leaf (:at 1723138256156) (:by |rJG4IHzWf) (:text |&newline)
                              |b $ %{} :Expr (:at 1729362561331) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |.!filter)
                                  |b $ %{} :Expr (:at 1729362561331) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1729362561331) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |line)
                                          |b $ %{} :Leaf (:at 1729362585105) (:by |rJG4IHzWf) (:text |idx)
                                          |h $ %{} :Leaf (:at 1729362600647) (:by |rJG4IHzWf) (:text |_a)
                                      |h $ %{} :Expr (:at 1729362561331) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |not)
                                          |b $ %{} :Expr (:at 1729362561331) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |blank?)
                                              |b $ %{} :Leaf (:at 1729362561331) (:by |rJG4IHzWf) (:text |line)
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
          :examples $ []
        |get-anthropic-key! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1728104563284) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1728104563284) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1728104563284) (:by |rJG4IHzWf) (:text |get-anthropic-key!)
              |h $ %{} :Expr (:at 1728104563284) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |key)
                          |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |b $ %{} :Leaf (:at 1728104575632) (:by |rJG4IHzWf) (:text "|\"claude-key")
                  |h $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |blank?)
                          |b $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |key)
                      |h $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |v)
                                  |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |js/prompt)
                                      |b $ %{} :Leaf (:at 1728104579190) (:by |rJG4IHzWf) (:text "|\"Required claude-key in localStorage")
                          |h $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |v)
                              |h $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |raise)
                                  |b $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |js/Error)
                                      |h $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text "|\"key is empty")
                          |l $ %{} :Expr (:at 1728104570190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                              |b $ %{} :Leaf (:at 1728104585739) (:by |rJG4IHzWf) (:text "|\"claude-key")
                              |h $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |v)
                          |o $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |v)
                      |l $ %{} :Leaf (:at 1728104570190) (:by |rJG4IHzWf) (:text |key)
          :examples $ []
        |get-deepinfra-key! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1729360204785) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1729360204785) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1729360204785) (:by |rJG4IHzWf) (:text |get-deepinfra-key!)
              |e $ %{} :Expr (:at 1729360212919) (:by |rJG4IHzWf)
                :data $ {}
              |h $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |key)
                          |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |b $ %{} :Leaf (:at 1729360219363) (:by |rJG4IHzWf) (:text "|\"deepinfra-key")
                  |h $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |blank?)
                          |b $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |key)
                      |h $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |v)
                                  |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |js/prompt)
                                      |b $ %{} :Leaf (:at 1729360225492) (:by |rJG4IHzWf) (:text "|\"Required deepinfra-key in localStorage")
                          |h $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |v)
                              |h $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |raise)
                                  |b $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |js/Error)
                                      |h $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text "|\"key is empty")
                          |l $ %{} :Expr (:at 1729360210839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                              |b $ %{} :Leaf (:at 1729360227556) (:by |rJG4IHzWf) (:text "|\"deepinfra-key")
                              |h $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |v)
                          |o $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |v)
                      |l $ %{} :Leaf (:at 1729360210839) (:by |rJG4IHzWf) (:text |key)
          :examples $ []
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
          :examples $ []
        |get-openrouter-key! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1745685764646) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1745685766012) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1745685764646) (:by |rJG4IHzWf) (:text |get-openrouter-key!)
              |h $ %{} :Expr (:at 1745685764646) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |key)
                          |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |b $ %{} :Leaf (:at 1745685773900) (:by |rJG4IHzWf) (:text "|\"openrouter-key")
                  |h $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |if)
                      |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |blank?)
                          |b $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |key)
                      |h $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |v)
                                  |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |js/prompt)
                                      |b $ %{} :Leaf (:at 1745685775340) (:by |rJG4IHzWf) (:text "|\"Required openrouter-key in localStorage")
                          |h $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |v)
                              |h $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |raise)
                                  |b $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |js/Error)
                                      |h $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text "|\"key is empty")
                          |l $ %{} :Expr (:at 1745685767113) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                              |b $ %{} :Leaf (:at 1745685776393) (:by |rJG4IHzWf) (:text "|\"openrouter-key")
                              |h $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |v)
                          |o $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |v)
                      |l $ %{} :Leaf (:at 1745685767113) (:by |rJG4IHzWf) (:text |key)
          :examples $ []
        |json-pattern? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1743618322215) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1743618323689) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1743618322215) (:by |rJG4IHzWf) (:text |json-pattern?)
              |h $ %{} :Expr (:at 1743618322215) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743618325335) (:by |rJG4IHzWf) (:text |text)
              |l $ %{} :Expr (:at 1743618411913) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1743618412493) (:by |rJG4IHzWf) (:text |or)
                  |T $ %{} :Expr (:at 1743618327593) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743618333815) (:by |rJG4IHzWf) (:text |.!startsWith)
                      |b $ %{} :Leaf (:at 1743618335770) (:by |rJG4IHzWf) (:text |text)
                      |h $ %{} :Leaf (:at 1743618339065) (:by |rJG4IHzWf) (:text "|\"{")
                  |b $ %{} :Expr (:at 1743618327593) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743618333815) (:by |rJG4IHzWf) (:text |.!startsWith)
                      |b $ %{} :Leaf (:at 1743618335770) (:by |rJG4IHzWf) (:text |text)
                      |h $ %{} :Leaf (:at 1743618424197) (:by |rJG4IHzWf) (:text "|\"[")
          :examples $ []
        |models-menu $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |models-menu)
              |h $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |[])
                  |b $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:gemini-flash)
                      |l $ %{} :Leaf (:at 1766026628961) (:by |rJG4IHzWf) (:text "||Gemini Flash 3")
                  |l $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:gemini-pro)
                      |l $ %{} :Leaf (:at 1766026639120) (:by |rJG4IHzWf) (:text "||Gemini Pro 3")
                  |n $ %{} :Expr (:at 1760369305589) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1760369305589) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1760369305589) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1760369305589) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                      |l $ %{} :Leaf (:at 1760369305589) (:by |rJG4IHzWf) (:text "||Gemini Flash Lite 2.5")
                  |nT $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1747843567640) (:by |rJG4IHzWf) (:text |:flash-imagen)
                      |l $ %{} :Leaf (:at 1747842415318) (:by |rJG4IHzWf) (:text "|\"Flash Imagen")
                  |o $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1763567138829) (:by |rJG4IHzWf) (:text |:imagen-4)
                      |l $ %{} :Leaf (:at 1763567136082) (:by |rJG4IHzWf) (:text "|\"Imagen 4")
                  |v $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:gemma)
                      |l $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text "||Gemma 3 27b")
                  |w $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1760369327198) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-sonnet-4.5)
                      |l $ %{} :Leaf (:at 1760369325038) (:by |rJG4IHzWf) (:text "|\"Openrouter Claude Sonnet 4.5")
                  |wT $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1747976587969) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-opus-4)
                      |l $ %{} :Leaf (:at 1747976598904) (:by |rJG4IHzWf) (:text "|\"Openrouter Claude Opus 4")
                  |x $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1748166638641) (:by |rJG4IHzWf) (:text |:openrouter/google/gemini-2.5-pro-preview)
                      |l $ %{} :Leaf (:at 1748166654166) (:by |rJG4IHzWf) (:text "|\"Openrouter Google Gemini 2.5 pro preview")
                  |xT $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1750310998437) (:by |rJG4IHzWf) (:text |:openrouter/google/gemini-2.5-flash-preview-05-20)
                      |l $ %{} :Leaf (:at 1750310878642) (:by |rJG4IHzWf) (:text "|\"Openrouter Google Gemini 2.5 flash preview")
                  |y $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1760369753782) (:by |rJG4IHzWf) (:text |:openrouter/openai/gpt-5)
                      |l $ %{} :Leaf (:at 1760369755484) (:by |rJG4IHzWf) (:text "|\"Openrouter GPT 5")
                  |z $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1760369670637) (:by |rJG4IHzWf) (:text |:openrouter/deepseek/deepseek-chat-v3.1)
                      |l $ %{} :Leaf (:at 1760369675343) (:by |rJG4IHzWf) (:text "|\"Openrouter deepseek-chat-v3.1")
                  |zP $ %{} :Expr (:at 1746250322424) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1760369449534) (:by |rJG4IHzWf) (:text |;)
                      |T $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1746250322424) (:by |rJG4IHzWf) (:text |:item)
                      |h $ %{} :Leaf (:at 1760369444457) (:by |rJG4IHzWf) (:text |:claude-4.5)
                      |l $ %{} :Leaf (:at 1760369447272) (:by |rJG4IHzWf) (:text "|\"Claude 4.5")
          :examples $ []
        |on-fill $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-fill)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |%{})
                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.schema/RespoListener)
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:name)
                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:on-fill)
                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:handler)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dispatch!)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |tag-match)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:fill-text)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |info)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit?)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:submit?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |info)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
                                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |do)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dispatch!)
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:states)
                                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |cursor)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |assoc)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                      |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:content)
                                                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |info)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |if)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit?)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |on-submit)
                                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |info)
                                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:search?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:think?)
                                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |state)
                                                  |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dispatch!)
                                              |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |nil)
          :examples $ []
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
          :examples $ []
        |pick-model $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1738811303560) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1722480815830) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1722480815830) (:by |rJG4IHzWf) (:text |pick-model)
              |h $ %{} :Expr (:at 1722480823778) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1734454282444) (:by |rJG4IHzWf) (:text |variant)
              |o $ %{} :Expr (:at 1735371285263) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1735371289067) (:by |rJG4IHzWf) (:text |case-default)
                  |V $ %{} :Leaf (:at 1735371559392) (:by |rJG4IHzWf) (:text |variant)
                  |X $ %{} :Leaf (:at 1766026596949) (:by |rJG4IHzWf) (:text "|\"gemini-3-flash-preview")
                  |h $ %{} :Expr (:at 1735371297708) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1738811261843) (:by |rJG4IHzWf) (:text |:gemini-pro)
                      |T $ %{} :Leaf (:at 1763567375347) (:by |rJG4IHzWf) (:text "|\"gemini-3-pro-preview")
                  |j $ %{} :Expr (:at 1738811293395) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1738811298297) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                      |b $ %{} :Leaf (:at 1766026605929) (:by |rJG4IHzWf) (:text "|\"gemini-flash-lite-latest")
                  |q $ %{} :Expr (:at 1744995919322) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744995921383) (:by |rJG4IHzWf) (:text |:gemma)
                      |b $ %{} :Leaf (:at 1744995926511) (:by |rJG4IHzWf) (:text "|\"gemma-3-27b-it")
          :examples $ []
        |style-a-toggler $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1728102579378) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1728102582145) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1728102579378) (:by |rJG4IHzWf) (:text |style-a-toggler)
              |h $ %{} :Expr (:at 1728102579378) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728102583212) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1728102583513) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728102585004) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1728102585335) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728102585714) (:by |rJG4IHzWf) (:text |{})
                          |o $ %{} :Expr (:at 1728113827701) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728113829832) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1728113830862) (:by |rJG4IHzWf) (:text |:pointer)
                          |q $ %{} :Expr (:at 1764579122367) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579125289) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1764579126118) (:by |rJG4IHzWf) (:text |:white)
                          |s $ %{} :Expr (:at 1764579517045) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579517045) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1764579517045) (:by |rJG4IHzWf) (:text |:black)
                  |h $ %{} :Expr (:at 1764579493085) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1764579498394) (:by |rJG4IHzWf) (:text "|\".focus-within &")
                      |b $ %{} :Expr (:at 1764579499001) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1764579499338) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1764579499620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579500558) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1764579502477) (:by |rJG4IHzWf) (:text |:black)
          :examples $ []
        |style-abort-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1743617965976) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1743617967319) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1743617965976) (:by |rJG4IHzWf) (:text |style-abort-close)
              |h $ %{} :Expr (:at 1743617969434) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1743617970769) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1743617971487) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1743617972867) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1743617968789) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743617968789) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1743617968789) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743617968789) (:by |rJG4IHzWf) (:text |:vertical-align)
                              |b $ %{} :Leaf (:at 1743617968789) (:by |rJG4IHzWf) (:text |:top)
                          |h $ %{} :Expr (:at 1743617968789) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743617968789) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1743617968789) (:by |rJG4IHzWf) (:text |10)
          :examples $ []
        |style-app-global $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767096326345) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |style-app-global)
              |X $ %{} :Expr (:at 1767096326345) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767096326345) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |str)
                          |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"& .")
                          |X $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |style-code-block)
                      |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:max-width)
                              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"90vw")
                  |X $ %{} :Expr (:at 1767096326345) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:color)
                              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"#999")
                          |X $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:transition-duration)
                              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"300ms")
                          |Z $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:background-color)
                              |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |98)
                          |b $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:touch-action)
                              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:none)
                  |Z $ %{} :Expr (:at 1767096326345) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"&:hover")
                      |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:color)
                              |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text "|\"#777")
                          |X $ %{} :Expr (:at 1767096326345) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |:background-color)
                              |V $ %{} :Expr (:at 1767096326345) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1767096326345) (:by |sync) (:text |100)
          :examples $ []
        |style-checkbox $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1754589862327) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1754589863646) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1754589862327) (:by |rJG4IHzWf) (:text |style-checkbox)
              |h $ %{} :Expr (:at 1754589887572) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1754589888080) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1754589868181) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1754589869365) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1754589874615) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1754589874615) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1754589874615) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589874615) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1754589874615) (:by |rJG4IHzWf) (:text |:pointer)
                          |h $ %{} :Expr (:at 1754589890090) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589892846) (:by |rJG4IHzWf) (:text |:user-select)
                              |b $ %{} :Leaf (:at 1754589894730) (:by |rJG4IHzWf) (:text |:none)
                          |l $ %{} :Expr (:at 1754589910965) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589912780) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1764579591739) (:by |rJG4IHzWf) (:text |12)
                          |m $ %{} :Expr (:at 1764579702995) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579706408) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1764579713259) (:by |rJG4IHzWf) (:text "|\"28px")
                          |o $ %{} :Expr (:at 1764579593594) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579596263) (:by |rJG4IHzWf) (:text |:vertical-align)
                              |b $ %{} :Leaf (:at 1764579597613) (:by |rJG4IHzWf) (:text |:middle)
          :examples $ []
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
                          |o $ %{} :Expr (:at 1722965163000) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965169477) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1722965172773) (:by |rJG4IHzWf) (:text |0.4)
                          |q $ %{} :Expr (:at 1734455188190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1734455191045) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1734455388692) (:by |rJG4IHzWf) (:text "|\"4px 8px")
                          |s $ %{} :Expr (:at 1734455226329) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1734455228463) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1734455231330) (:by |rJG4IHzWf) (:text |:inline-block)
                          |t $ %{} :Expr (:at 1734455250531) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1734455352453) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1734455381288) (:by |rJG4IHzWf) (:text "|\"24px")
          :examples $ []
        |style-code-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1743618465800) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1743618468158) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1743618465800) (:by |rJG4IHzWf) (:text |style-code-content)
              |h $ %{} :Expr (:at 1743618465800) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1743618469510) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1743618469915) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743618471314) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1743618471583) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743618471994) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1743618472736) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743618477249) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1743618481927) (:by |rJG4IHzWf) (:text "|\"1.5")
                          |h $ %{} :Expr (:at 1743618483987) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743618485449) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1743618496096) (:by |rJG4IHzWf) (:text |13)
          :examples $ []
        |style-fill $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-fill)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:pointer)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:user-select)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:none)
                          |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:display)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:inline-flex)
                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:align-items)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:center)
                          |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:justify-content)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:center)
                          |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:transition-duration)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"200ms")
                          |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:color)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |80)
                          |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:margin)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"0 4px 0 8px")
                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"&:hover")
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:color)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |40)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:transform)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"scale(1.06)")
          :examples $ []
        |style-gap12 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1764579752226) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1764579756089) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1764579752226) (:by |rJG4IHzWf) (:text |style-gap12)
              |h $ %{} :Expr (:at 1764579752226) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1764579757386) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1764579757777) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1764579759142) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1764579759440) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1764579764877) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1764579765202) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1764579766489) (:by |rJG4IHzWf) (:text |:gap)
                              |b $ %{} :Leaf (:at 1764579766930) (:by |rJG4IHzWf) (:text |12)
          :examples $ []
        |style-image $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1744743046216) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1744743047657) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1744743046216) (:by |rJG4IHzWf) (:text |style-image)
              |h $ %{} :Expr (:at 1744743046216) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744743049755) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1744743050288) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744743052178) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1744743052530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744743052841) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1744743073698) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744743075125) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1744743080157) (:by |rJG4IHzWf) (:text "|\"100%")
                          |e $ %{} :Expr (:at 1747895318444) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1747895356093) (:by |rJG4IHzWf) (:text |:align-self)
                              |b $ %{} :Leaf (:at 1747895359108) (:by |rJG4IHzWf) (:text |:flex-start)
                          |h $ %{} :Expr (:at 1744743107698) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744743111212) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1744743131525) (:by |rJG4IHzWf) (:text "|\"6px")
                          |l $ %{} :Expr (:at 1744743114494) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744743117053) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Expr (:at 1744743117317) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744743118219) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1744743121038) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1744743121796) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744743122152) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1744743123280) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1744743123614) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1744743124055) (:by |rJG4IHzWf) (:text |90)
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
                          |o $ %{} :Expr (:at 1723008262315) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1723008262315) (:by |rJG4IHzWf) (:text "|\"100%")
                          |oT $ %{} :Expr (:at 1754589093659) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589093659) (:by |rJG4IHzWf) (:text |:max-width)
                              |b $ %{} :Leaf (:at 1754589093659) (:by |rJG4IHzWf) (:text |1200)
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
                              |D $ %{} :Leaf (:at 1754589232574) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1723009698867) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1723009885600) (:by |rJG4IHzWf) (:text "|\"translate(50%,0)")
                          |v $ %{} :Expr (:at 1743789977674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589047265) (:by |rJG4IHzWf) (:text |:transition-property)
                              |b $ %{} :Leaf (:at 1743790061669) (:by |rJG4IHzWf) (:text "|\"height")
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
                              |D $ %{} :Leaf (:at 1754589241262) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1723009718408) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1723009718408) (:by |rJG4IHzWf) (:text "|\"translate(50%,0)")
          :examples $ []
        |style-message-box-panel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1754589150425) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1754589151732) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1754589150425) (:by |rJG4IHzWf) (:text |style-message-box-panel)
              |h $ %{} :Expr (:at 1754589150425) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1754589153749) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1754589154000) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1754589155772) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1754589156135) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1754589156477) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1754589193342) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589193342) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1754589193342) (:by |rJG4IHzWf) (:text |:absolute)
                          |Z $ %{} :Expr (:at 1754589197892) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589197892) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1754589197892) (:by |rJG4IHzWf) (:text |0)
                          |a $ %{} :Expr (:at 1754589203066) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589203066) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1754925948393) (:by |rJG4IHzWf) (:text |1)
                          |aT $ %{} :Expr (:at 1754589217872) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589217872) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1754589217872) (:by |rJG4IHzWf) (:text "|\"100%")
                          |aj $ %{} :Expr (:at 1754589315168) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754589315168) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1754589315168) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1754589315168) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1754589315168) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1754589315168) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1754589315168) (:by |rJG4IHzWf) (:text |100)
                                  |o $ %{} :Leaf (:at 1754926713758) (:by |rJG4IHzWf) (:text |0.7)
                          |b $ %{} :Expr (:at 1754589178223) (:by |rJG4IHzWf)
                            :data $ {}
                              |b $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |:border-top)
                              |h $ %{} :Expr (:at 1754589178223) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1754589178223) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1754589178223) (:by |rJG4IHzWf) (:text |80)
                                      |o $ %{} :Leaf (:at 1754926686791) (:by |rJG4IHzWf) (:text |0.6)
                  |h $ %{} :Expr (:at 1754926519263) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1754926526809) (:by |rJG4IHzWf) (:text "|\"&.focus-within")
                      |b $ %{} :Expr (:at 1754926528024) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1754926528377) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1754926532475) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754926532475) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1754926532475) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1754926532475) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1754926532475) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1754926532475) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1754926532475) (:by |rJG4IHzWf) (:text |100)
                                  |o $ %{} :Leaf (:at 1754926536438) (:by |rJG4IHzWf) (:text |0.9)
                          |h $ %{} :Expr (:at 1754926785726) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754926789060) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1754926789353) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1754926791545) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1754926869491) (:by |rJG4IHzWf) (:text "|\"0 0px 8px ")
                                  |h $ %{} :Expr (:at 1754926798086) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1754926798504) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1754926798768) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1754926798976) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1754926800532) (:by |rJG4IHzWf) (:text |0)
                                      |o $ %{} :Leaf (:at 1754926823245) (:by |rJG4IHzWf) (:text |0.3)
          :examples $ []
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
                              |b $ %{} :Leaf (:at 1744996052215) (:by |rJG4IHzWf) (:text "|\"40px 16px 20vh 16px")
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
                          |s $ %{} :Expr (:at 1728102624059) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728102625433) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1728102626969) (:by |rJG4IHzWf) (:text |:relative)
          :examples $ []
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
                              |T $ %{} :Leaf (:at 1738811512896) (:by |rJG4IHzWf) (:text |:min-width)
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
                              |b $ %{} :Leaf (:at 1743618237627) (:by |rJG4IHzWf) (:text |16)
                          |o $ %{} :Expr (:at 1722965459445) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965461805) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1743618241275) (:by |rJG4IHzWf) (:text "|\"4px 12px")
                          |q $ %{} :Expr (:at 1722965489176) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722965490583) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1722965496076) (:by |rJG4IHzWf) (:text "|\"8px 0")
                          |s $ %{} :Expr (:at 1738811500007) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1738811502514) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1738811503474) (:by |rJG4IHzWf) (:text |:nowrap)
                          |t $ %{} :Expr (:at 1743618199426) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743618201452) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1743618205158) (:by |rJG4IHzWf) (:text |:inline-flex)
                  |h $ %{} :Expr (:at 1743618058927) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1743618062724) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |T $ %{} :Expr (:at 1743618069059) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1743618069622) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1743618058108) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1743618058108) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1743618084533) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px ")
                                  |h $ %{} :Expr (:at 1743618058108) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1743618058108) (:by |rJG4IHzWf) (:text |0)
                                      |o $ %{} :Leaf (:at 1743618075718) (:by |rJG4IHzWf) (:text |0.2)
          :examples $ []
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
          :examples $ []
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
                      |b $ %{} :Expr (:at 1754926569393) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722964851279) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1722964851770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1722964853950) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1722964870294) (:by |rJG4IHzWf) (:text |12)
                          |l $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1744033277128) (:by |rJG4IHzWf) (:text "|\"max(160px,20vh)")
                          |o $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text "|\"100%")
                          |q $ %{} :Expr (:at 1723010474462) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010479048) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1723010547772) (:by |rJG4IHzWf) (:text "|\"320ms")
                          |s $ %{} :Expr (:at 1754588485243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754588488860) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Leaf (:at 1754588489663) (:by |rJG4IHzWf) (:text |:none)
                          |u $ %{} :Expr (:at 1754926569393) (:by |rJG4IHzWf)
                            :data $ {}
                              |v $ %{} :Leaf (:at 1754589345231) (:by |rJG4IHzWf) (:text |:background-color)
                              |w $ %{} :Leaf (:at 1754926575858) (:by |rJG4IHzWf) (:text |:transparent)
                  |h $ %{} :Expr (:at 1722964849581) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743789904682) (:by |rJG4IHzWf) (:text "|\"&.focus-within")
                      |b $ %{} :Expr (:at 1722964850928) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722964851279) (:by |rJG4IHzWf) (:text |{})
                          |l $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1744741882322) (:by |rJG4IHzWf) (:text "|\"max(240px,32vh)")
                          |o $ %{} :Expr (:at 1754588504103) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754588504103) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Leaf (:at 1754588504103) (:by |rJG4IHzWf) (:text |:none)
                          |q $ %{} :Expr (:at 1754926905161) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1754926907470) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Leaf (:at 1754926908255) (:by |rJG4IHzWf) (:text |:none)
          :examples $ []
        |style-thinking $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767096326344) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |style-thinking)
              |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:max-height)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |200)
                          |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:overflow)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:auto)
                          |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:padding)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"12px 16px")
                          |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:background-color)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |96)
                          |d $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:font-size)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |12)
                          |f $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:line-height)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"1.8")
                          |h $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:color)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |50)
                          |j $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:border-radius)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |8)
                          |l $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:margin-bottom)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |12)
                          |n $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:border)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |str)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"1px solid ")
                                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |90)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"& .md-p")
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:margin)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"4px 0")
          :examples $ []
        |submit-message! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767096326344) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |submit-message!)
              |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                  |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                  |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                  |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                  |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
              |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |hint-fn)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |async)
              |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |atom)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"")
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |atom)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"")
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:model)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |try)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |case-default)
                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                          |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                  |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                  |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                  |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                  |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                  |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-pro)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:flash-imagen)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-flash-imagen-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                          |d $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:imagen-4)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-imagen-4-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                          |f $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-thinking)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |h $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-flash-thinking)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |j $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-flash-lite)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |l $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-flash)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |n $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:gemini-learnlm)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-genai-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |model)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |search?)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |think?)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |j $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                                      |l $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*thinking-text)
                          |p $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:claude-3.7)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-anthropic-msg!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"claude-3-7-sonnet-20250219")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |false)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                          |r $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/anthropic/claude-sonnet-4)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"anthropic/claude-sonnet-4")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |t $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/anthropic/claude-opus-4)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"anthropic/claude-opus-4")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |v $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/anthropic/claude-3.7-sonnet:thinking)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"anthropic/claude-3.7-sonnet:thinking")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |x $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/google/gemini-2.5-pro-preview)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"google/gemini-2.5-pro-preview")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |y $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/google/gemini-2.5-flash-preview-05-20)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"google/gemini-2.5-flash-preview-05-20")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |z $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/openai/gpt-5)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"openai/gpt-5")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                          |zV $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:openrouter/deepseek/deepseek-chat-v3.1)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-await)
                                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |call-openrouter!)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prompt-text)
                                      |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"deepseek/deepseek-chat-v3.1")
                                      |d $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
                                      |f $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                                      |h $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*text)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |e)
                          |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |d!)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |cursor)
                              |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |->)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |state)
                                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:answer)
                                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |str)
                                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |@*text)
                                          |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |&newline)
                                          |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |&newline)
                                          |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |str)
                                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"Failed to load: ")
                                              |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |e)
                                  |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:loading?)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |false)
                                  |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:done?)
                                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |true)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1768494455833) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.comp.container)
            |X $ %{} :Expr (:at 1768494455833) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo-ui.css)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |css)
                |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.css)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defstyle)
                |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.util.format)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hsl)
                |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.core)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defcomp)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defeffect)
                        |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |<>)
                        |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |>>)
                        |b $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |div)
                        |d $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |button)
                        |f $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |textarea)
                        |h $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |span)
                        |j $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |input)
                        |l $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |a)
                        |n $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |pre)
                        |p $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |img)
                |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.comp.space)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=<)
                |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.comp.inspect)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-inspect)
                |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel.comp.reel)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-reel)
                |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.config)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |dev?)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |chrome-extension?)
                |l $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"axios")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |axios)
                |n $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo-md.comp.md)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-md-block)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |style-code-block)
                |p $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo-ui.comp)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-copy)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-close)
                |r $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo-alerts.core)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |use-modal-menu)
                |t $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"../extension/get-selected")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |get-selected)
                |v $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof.once)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |memof1-call-by)
                |x $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"@google/genai")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |GoogleGenAI)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |Modality)
                |y $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"../lib/image")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |base64ToBlob)
                |z $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"openai")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |OpenAI)
                |zV $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |feather.core)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-i)
        :examples $ []
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
                      |b $ %{} :Leaf (:at 1727716517207) (:by |rJG4IHzWf) (:text |js/window.chrome)
                  |b $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723172926530) (:by |rJG4IHzWf) (:text |some?)
                      |b $ %{} :Leaf (:at 1727716519802) (:by |rJG4IHzWf) (:text |js/window.chrome.runtime)
                  |h $ %{} :Expr (:at 1723172916349) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723172926530) (:by |rJG4IHzWf) (:text |some?)
                      |b $ %{} :Leaf (:at 1727716522236) (:by |rJG4IHzWf) (:text |js/window.chrome.runtime.id)
          :examples $ []
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
          :examples $ []
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
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
        :examples $ []
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
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
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
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
          :examples $ []
        |listen-extension! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768494455833) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |listen-extension!)
              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/chrome.runtime.onMessage.addListener)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |sender)
                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respond!)
                      |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |when)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"menu-summary")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-action)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"你扮演一个专业的工程师, 对以下内容做一下讲解, 用中文, 注意要简略, 内容注意分块.\n\n")
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |&newline)
                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |&newline)
                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-content)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:fill-text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:submit?)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |send-to-component!)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                      |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |when)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"fill-text")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-action)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-text)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit?)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |either)
                                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-submit?)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
                                  |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:fill-text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:submit?)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit?)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |send-to-component!)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                      |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |when)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"menu-translate")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-action)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |str)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"请将以下内容翻译成中文, 保持简洁分段:\n\n")
                                          |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |&newline)
                                          |Z $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |&newline)
                                          |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-content)
                                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:fill-text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:submit?)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |true)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |send-to-component!)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                      |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |when)
                          |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |=)
                              |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"menu-custom")
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-action)
                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |.-content)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |message)
                                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
                                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |::)
                                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:fill-text)
                                          |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:text)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |content)
                                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:submit?)
                                                  |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |false)
                              |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1768494455833) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |send-to-component!)
                                      |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |event-tuple)
              |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js/chrome.runtime.connect)
                  |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |js-object)
                      |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:name)
                          |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text ||mySidepanel)
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767096326344) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |main!)
              |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |println)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"Running mode:")
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |if)
                      |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |config/dev?)
                      |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"dev")
                      |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"release")
              |b $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |if)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |config/dev?)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |load-console-formatter!)
              |d $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |render-app!)
              |f $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |add-watch)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |*reel)
                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:changes)
                  |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |reel)
                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |prev)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |render-app!)
              |h $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |listen-devtools!)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text ||k)
                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |dispatch!)
              |j $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/window.addEventListener)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text ||beforeunload)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |persist-storage!)
              |l $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/window.addEventListener)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text ||visibilitychange)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |if)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |=)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "|\"hidden")
                              |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/document.visibilityState)
                          |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/window.addEventListener)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text ||dblclick)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |.!preventDefault)
                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
              |p $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/window.addEventListener)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text ||wheel)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |if)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |.-ctrlKey)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                          |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |.!preventDefault)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |event)
                  |Z $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js-object)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:passive)
                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |false)
              |r $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |;)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |flipped)
                  |X $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/setInterval)
                  |Z $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |60000)
                  |b $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |persist-storage!)
              |t $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |raw)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |js/localStorage.getItem)
                              |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:storage-key)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |config/site)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |when)
                      |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |some?)
                          |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |raw)
                      |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |dispatch!)
                          |V $ %{} :Expr (:at 1767096326344) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |::)
                              |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |:hydrate-storage)
                              |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |parse-cirru-edn)
                                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |raw)
              |v $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |if)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |config/chrome-extension?)
                  |X $ %{} :Expr (:at 1767096326344) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |listen-extension!)
              |x $ %{} :Expr (:at 1767096326344) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text |println)
                  |V $ %{} :Leaf (:at 1767096326344) (:by |sync) (:text "||App started.")
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |j $ %{} :Leaf (:at 1695659910770) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
          :examples $ []
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
          :examples $ []
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
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by |)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1768494455833) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.main)
            |X $ %{} :Expr (:at 1768494455833) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.core)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |render!)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |clear-cache!)
                |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.comp.container)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |comp-container)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |submit-message!)
                |Z $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.updater)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |updater)
                |b $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.schema)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |schema)
                |d $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel.util)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |listen-devtools!)
                |f $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel.core)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel-updater)
                        |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |refresh-reel)
                |h $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel.schema)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |reel-schema)
                |j $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |app.config)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |config)
                |l $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"./calcit.build-errors")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |build-errors)
                |n $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text "|\"bottom-tip")
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |hud!)
                |p $ %{} :Expr (:at 1768494455833) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |respo.controller.client)
                    |V $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1768494455833) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1768494455833) (:by |sync) (:text |send-to-component!)
        :examples $ []
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by |)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by |)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
                  |n $ %{} :Expr (:at 1728102732339) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728102733950) (:by |rJG4IHzWf) (:text |:model)
                      |b $ %{} :Leaf (:at 1728102741093) (:by |rJG4IHzWf) (:text |nil)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
        :examples $ []
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by |)
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
                  |q $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397783265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1752513005001) (:by |rJG4IHzWf) (:text |:states-merge)
                          |b $ %{} :Leaf (:at 1688397785768) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1752513008460) (:by |rJG4IHzWf) (:text |s)
                          |l $ %{} :Leaf (:at 1752513010449) (:by |rJG4IHzWf) (:text |changes)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1752513012856) (:by |rJG4IHzWf) (:text |update-states-merge)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1688397788043) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1688397788324) (:by |rJG4IHzWf) (:text |s)
                          |u $ %{} :Leaf (:at 1752513017697) (:by |rJG4IHzWf) (:text |changes)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397789504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688397790936) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |tT $ %{} :Expr (:at 1728102722579) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1728102724723) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728102726342) (:by |rJG4IHzWf) (:text |:change-model)
                      |h $ %{} :Expr (:at 1728104045247) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728104045645) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Expr (:at 1728104046835) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104046165) (:by |rJG4IHzWf) (:text |=)
                              |b $ %{} :Expr (:at 1728104048109) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728104049307) (:by |rJG4IHzWf) (:text |:model)
                                  |b $ %{} :Leaf (:at 1728104049980) (:by |rJG4IHzWf) (:text |store)
                              |h $ %{} :Leaf (:at 1728104053377) (:by |rJG4IHzWf) (:text |:anthropic)
                          |h $ %{} :Expr (:at 1728104054758) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104055628) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728104056828) (:by |rJG4IHzWf) (:text |store)
                              |h $ %{} :Leaf (:at 1728104057521) (:by |rJG4IHzWf) (:text |:model)
                              |l $ %{} :Leaf (:at 1728104060030) (:by |rJG4IHzWf) (:text |:gemini)
                          |l $ %{} :Expr (:at 1728104054758) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728104055628) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728104056828) (:by |rJG4IHzWf) (:text |store)
                              |h $ %{} :Leaf (:at 1728104057521) (:by |rJG4IHzWf) (:text |:model)
                              |l $ %{} :Leaf (:at 1728104063276) (:by |rJG4IHzWf) (:text |:anthropic)
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
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
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
                        |n $ %{} :Leaf (:at 1752513021884) (:by |rJG4IHzWf) (:text |update-states-merge)
        :examples $ []
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
