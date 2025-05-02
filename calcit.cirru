
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |respo-markdown.calcit/ |alerts.calcit/
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
        |*gen-ai $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1739122298749) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1739122331785) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1739122364386) (:by |rJG4IHzWf) (:text |*gen-ai)
              |h $ %{} :Leaf (:at 1739122336037) (:by |rJG4IHzWf) (:text |nil)
        |*gen-ai-new $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1744996557767) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1744996559066) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1744996557767) (:by |rJG4IHzWf) (:text |*gen-ai-new)
              |h $ %{} :Leaf (:at 1744996560550) (:by |rJG4IHzWf) (:text |nil)
        |*openai $ %{} :CodeEntry (:doc "|called openai sdk, but actually for openrouter")
          :code $ %{} :Expr (:at 1745685331700) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1745685733719) (:by |rJG4IHzWf) (:text |defatom)
              |b $ %{} :Leaf (:at 1745685331700) (:by |rJG4IHzWf) (:text |*openai)
              |h $ %{} :Leaf (:at 1745685341848) (:by |rJG4IHzWf) (:text |nil)
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
        |call-deepinfra-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1729360719295) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1729360719295) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1729360719295) (:by |rJG4IHzWf) (:text |call-deepinfra-msg!)
              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |prompt-text)
                  |l $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                  |o $ %{} :Leaf (:at 1730141988039) (:by |rJG4IHzWf) (:text |*text)
              |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |async)
              |q $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |abort)
              |s $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:loading?)
                              |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |true)
              |t $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |get-selected)
                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.replace)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"<未找到内容>")
                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |result)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!post)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |axios)
                                  |h $ %{} :Leaf (:at 1729360761728) (:by |rJG4IHzWf) (:text "|\"https://api.deepinfra.com/v1/openai/chat/completions")
                                  |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1729360849848) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729361047378) (:by |rJG4IHzWf) (:text |:model)
                                          |b $ %{} :Leaf (:at 1729360851734) (:by |rJG4IHzWf) (:text "|\"nvidia/Llama-3.1-Nemotron-70B-Instruct")
                                      |h $ %{} :Expr (:at 1729360853907) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360855097) (:by |rJG4IHzWf) (:text |:stream)
                                          |b $ %{} :Leaf (:at 1729360855919) (:by |rJG4IHzWf) (:text |true)
                                      |l $ %{} :Expr (:at 1729360856375) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729361077739) (:by |rJG4IHzWf) (:text |:messages)
                                          |b $ %{} :Expr (:at 1729360858975) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360860536) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1729360861595) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360865027) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1729360865507) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360867526) (:by |rJG4IHzWf) (:text |:role)
                                                      |b $ %{} :Leaf (:at 1729360869500) (:by |rJG4IHzWf) (:text "|\"user")
                                                  |h $ %{} :Expr (:at 1729360870169) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360872717) (:by |rJG4IHzWf) (:text |:content)
                                                      |b $ %{} :Leaf (:at 1729360874317) (:by |rJG4IHzWf) (:text |content)
                                  |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:params)
                                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-object)
                                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:headers)
                                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-object)
                                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:Content-Type)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"application/json")
                                              |l $ %{} :Expr (:at 1729360800073) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360804497) (:by |rJG4IHzWf) (:text |:Authorization)
                                                  |b $ %{} :Expr (:at 1729360902770) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1729360907667) (:by |rJG4IHzWf) (:text |str-spaced)
                                                      |L $ %{} :Leaf (:at 1729360905113) (:by |rJG4IHzWf) (:text "|\"Bearer")
                                                      |T $ %{} :Expr (:at 1729360807839) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360814990) (:by |rJG4IHzWf) (:text |get-deepinfra-key!)
                                      |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:responseType)
                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"stream")
                                      |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:adapter)
                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text "|\"fetch")
                                      |q $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:signal)
                                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |abort)
                                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |new)
                                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js/AbortController)
                                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |reset!)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |*abort-control)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |abort)
                                              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-signal)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |abort)
                      |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |stream)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-data)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |result)
                      |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |reader)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!pipeThrough)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |stream)
                                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |new)
                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js/TextDecoderStream)
                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!getReader)
                      |s $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |;)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |reading)
                          |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!read)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |reader)
                      |t $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |;)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |answer)
                          |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |result)
                              |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-data)
                              |l $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-candidates)
                              |o $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-0)
                              |q $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-content)
                              |s $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-parts)
                              |t $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-0)
                              |u $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-text)
                  |e $ %{} :Expr (:at 1730141998370) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1730142002794) (:by |rJG4IHzWf) (:text |reset!)
                      |T $ %{} :Leaf (:at 1730141998370) (:by |rJG4IHzWf) (:text |*text)
                      |b $ %{} :Expr (:at 1730141998370) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1730141998370) (:by |rJG4IHzWf) (:text |str)
                          |b $ %{} :Leaf (:at 1730141998370) (:by |rJG4IHzWf) (:text "|\"Nemotron:")
                          |h $ %{} :Leaf (:at 1730141998370) (:by |rJG4IHzWf) (:text |&newline)
                          |l $ %{} :Leaf (:at 1730141998370) (:by |rJG4IHzWf) (:text |&newline)
                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |;)
                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |w-log)
                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |answer)
                              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |apply-args)
                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |fn)
                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                          |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |hint-fn)
                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |async)
                          |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |info)
                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |js-await)
                                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.!read)
                                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |reader)
                                  |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |value)
                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-value)
                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |info)
                                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |done?)
                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |.-done)
                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |info)
                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |done?)
                                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |::)
                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:states)
                                          |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                                          |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:answer)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |@*text)
                                              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:loading?)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |false)
                                              |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:done?)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |true)
                                  |l $ %{} :Expr (:at 1729362106903) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1729362107421) (:by |rJG4IHzWf) (:text |if)
                                      |L $ %{} :Expr (:at 1729362107982) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729362116661) (:by |rJG4IHzWf) (:text |.starts-with?)
                                          |b $ %{} :Leaf (:at 1729362440760) (:by |rJG4IHzWf) (:text |value)
                                          |h $ %{} :Leaf (:at 1729362119514) (:by |rJG4IHzWf) (:text "|\": ping")
                                      |P $ %{} :Expr (:at 1729362121432) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729362121135) (:by |rJG4IHzWf) (:text |recur)
                                      |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |if)
                                          |b $ %{} :Expr (:at 1729361943864) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1729361944406) (:by |rJG4IHzWf) (:text |or)
                                              |L $ %{} :Expr (:at 1729361945892) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1729363101982) (:by |rJG4IHzWf) (:text |.ends-with?)
                                                  |T $ %{} :Expr (:at 1729362207893) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1729362209541) (:by |rJG4IHzWf) (:text |trim)
                                                      |T $ %{} :Leaf (:at 1729362901427) (:by |rJG4IHzWf) (:text |value)
                                                  |b $ %{} :Leaf (:at 1729361949362) (:by |rJG4IHzWf) (:text "|\"[DONE]")
                                              |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |nil?)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |content)
                                          |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |::)
                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:states)
                                                  |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                                                  |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                                                      |j $ %{} :Expr (:at 1729362687257) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729362687257) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1729362687257) (:by |rJG4IHzWf) (:text |:answer)
                                                          |h $ %{} :Leaf (:at 1729362687257) (:by |rJG4IHzWf) (:text |@*text)
                                                      |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:loading?)
                                                          |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |false)
                                                      |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:done?)
                                                          |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |true)
                                          |l $ %{} :Expr (:at 1729363000116) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1729363000870) (:by |rJG4IHzWf) (:text |let)
                                              |L $ %{} :Expr (:at 1729363001141) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1729363001286) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729363002085) (:by |rJG4IHzWf) (:text |lines)
                                                      |b $ %{} :Expr (:at 1729363070982) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1729363072177) (:by |rJG4IHzWf) (:text |->)
                                                          |T $ %{} :Expr (:at 1729363011220) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1729363035337) (:by |rJG4IHzWf) (:text |.split-lines)
                                                              |b $ %{} :Leaf (:at 1729363024290) (:by |rJG4IHzWf) (:text |value)
                                                          |b $ %{} :Expr (:at 1729363073356) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1729363074975) (:by |rJG4IHzWf) (:text |filter)
                                                              |b $ %{} :Expr (:at 1729363075227) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1729363075571) (:by |rJG4IHzWf) (:text |fn)
                                                                  |b $ %{} :Expr (:at 1729363075825) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729363076307) (:by |rJG4IHzWf) (:text |x)
                                                                  |h $ %{} :Expr (:at 1729363076861) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729363077639) (:by |rJG4IHzWf) (:text |not)
                                                                      |b $ %{} :Expr (:at 1729363078150) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1729363080578) (:by |rJG4IHzWf) (:text |empty?)
                                                                          |b $ %{} :Leaf (:at 1729363079652) (:by |rJG4IHzWf) (:text |x)
                                              |T $ %{} :Expr (:at 1729363044383) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1729363050445) (:by |rJG4IHzWf) (:text |&doseq)
                                                  |L $ %{} :Expr (:at 1729363050894) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729363052094) (:by |rJG4IHzWf) (:text |line)
                                                      |b $ %{} :Leaf (:at 1729363053428) (:by |rJG4IHzWf) (:text |lines)
                                                  |T $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |let)
                                                      |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1729361939928) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |candidate0)
                                                              |b $ %{} :Expr (:at 1729361939928) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |->)
                                                                  |b $ %{} :Expr (:at 1729362938321) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729362938321) (:by |rJG4IHzWf) (:text |.!slice)
                                                                      |b $ %{} :Leaf (:at 1729363066451) (:by |rJG4IHzWf) (:text |line)
                                                                      |h $ %{} :Leaf (:at 1729362938321) (:by |rJG4IHzWf) (:text |6)
                                                                  |h $ %{} :Expr (:at 1729361939928) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |first-line)
                                                                  |l $ %{} :Expr (:at 1729361939928) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |js/JSON.parse)
                                                                  |o $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |.-choices)
                                                                  |q $ %{} :Leaf (:at 1729361939928) (:by |rJG4IHzWf) (:text |.-0)
                                                          |b $ %{} :Expr (:at 1729361942866) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1729361942866) (:by |rJG4IHzWf) (:text |content)
                                                              |b $ %{} :Expr (:at 1729363242269) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1729363243562) (:by |rJG4IHzWf) (:text |or)
                                                                  |T $ %{} :Expr (:at 1729363255315) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1729363256048) (:by |rJG4IHzWf) (:text |->)
                                                                      |T $ %{} :Leaf (:at 1729363307935) (:by |rJG4IHzWf) (:text |candidate0)
                                                                      |X $ %{} :Leaf (:at 1729363320571) (:by |rJG4IHzWf) (:text |.-delta)
                                                                      |b $ %{} :Leaf (:at 1729361942866) (:by |rJG4IHzWf) (:text |.-content)
                                                                  |b $ %{} :Leaf (:at 1729363272709) (:by |rJG4IHzWf) (:text "|\"")
                                                      |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |swap!)
                                                          |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |*text)
                                                          |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |str)
                                                          |l $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |content)
                                                      |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |d!)
                                                          |b $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |::)
                                                              |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:states)
                                                              |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |cursor)
                                                              |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |->)
                                                                  |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |state)
                                                                  |h $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:answer)
                                                                      |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |@*text)
                                                                  |l $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:loading?)
                                                                      |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |false)
                                                                  |o $ %{} :Expr (:at 1729360720846) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |:done?)
                                                                      |h $ %{} :Leaf (:at 1729360720846) (:by |rJG4IHzWf) (:text |false)
                                              |b $ %{} :Expr (:at 1729363060032) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1729363060032) (:by |rJG4IHzWf) (:text |recur)
        |call-gemini-msg! $ %{} :CodeEntry (:doc "|switching to Google's generative-ai-js sdk")
          :code $ %{} :Expr (:at 1728102928322) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1728102928322) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1728103405100) (:by |rJG4IHzWf) (:text |call-gemini-msg!)
              |h $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1734454271577) (:by |rJG4IHzWf) (:text |variant)
                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |cursor)
                  |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |state)
                  |h $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |prompt-text)
                  |l $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |async)
              |m $ %{} :Expr (:at 1739122349055) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1739122349562) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1739122352502) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1739122379208) (:by |rJG4IHzWf) (:text |nil?)
                      |T $ %{} :Leaf (:at 1739122375154) (:by |rJG4IHzWf) (:text |@*gen-ai)
                  |h $ %{} :Expr (:at 1739122380603) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1739122382117) (:by |rJG4IHzWf) (:text |reset!)
                      |b $ %{} :Leaf (:at 1739122384664) (:by |rJG4IHzWf) (:text |*gen-ai)
                      |h $ %{} :Expr (:at 1739122389504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1739122389504) (:by |rJG4IHzWf) (:text |new)
                          |b $ %{} :Leaf (:at 1739122389504) (:by |rJG4IHzWf) (:text |GoogleGenerativeAI)
                          |e $ %{} :Expr (:at 1739122403333) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1739122403333) (:by |rJG4IHzWf) (:text |get-gemini-key!)
                          |h $ %{} :Leaf (:at 1739122392683) (:by |rJG4IHzWf) (:text |)
              |o $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |abort)
              |q $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |:loading?)
                              |h $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |true)
              |s $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |get-selected)
                      |X $ %{} :Expr (:at 1739122412316) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1739122415296) (:by |rJG4IHzWf) (:text |gen-ai)
                          |b $ %{} :Expr (:at 1739122424972) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1739122426118) (:by |rJG4IHzWf) (:text |let)
                              |T $ %{} :Expr (:at 1739122427584) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1739122427836) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1739122430036) (:by |rJG4IHzWf) (:text |ai)
                                      |T $ %{} :Leaf (:at 1739122423490) (:by |rJG4IHzWf) (:text |@*gen-ai)
                              |X $ %{} :Expr (:at 1739122432742) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1739122436223) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1739122437380) (:by |rJG4IHzWf) (:text |ai)
                              |b $ %{} :Leaf (:at 1739122431636) (:by |rJG4IHzWf) (:text |ai)
                      |Z $ %{} :Expr (:at 1739122484245) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1739122494998) (:by |rJG4IHzWf) (:text |model-instance)
                          |b $ %{} :Expr (:at 1739122496640) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1739122506755) (:by |rJG4IHzWf) (:text |.!getGenerativeModel)
                              |X $ %{} :Leaf (:at 1739122508942) (:by |rJG4IHzWf) (:text |gen-ai)
                              |b $ %{} :Expr (:at 1739122511159) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1739122516284) (:by |rJG4IHzWf) (:text |js-object)
                                  |T $ %{} :Expr (:at 1739122519106) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1739122521151) (:by |rJG4IHzWf) (:text |:model)
                                      |T $ %{} :Expr (:at 1739122500574) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1739122500574) (:by |rJG4IHzWf) (:text |pick-model)
                                          |b $ %{} :Leaf (:at 1739122500574) (:by |rJG4IHzWf) (:text |variant)
                              |h $ %{} :Expr (:at 1739122522360) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1739122525876) (:by |rJG4IHzWf) (:text |js-object)
                                  |b $ %{} :Expr (:at 1739122527867) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1739122531212) (:by |rJG4IHzWf) (:text |:baseUrl)
                                      |b $ %{} :Leaf (:at 1739122538667) (:by |rJG4IHzWf) (:text "|\"https://sf.chenyong.life")
                                  |h $ %{} :Expr (:at 1739123218728) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1739123222550) (:by |rJG4IHzWf) (:text |:signal)
                                      |T $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |let)
                                          |b $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |abort)
                                                  |b $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |new)
                                                      |b $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |js/AbortController)
                                          |h $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |reset!)
                                              |b $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |*abort-control)
                                              |h $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |abort)
                                          |l $ %{} :Expr (:at 1739123217935) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |.-signal)
                                              |b $ %{} :Leaf (:at 1739123217935) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743618554572) (:by |rJG4IHzWf) (:text |.!replace)
                              |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1743618542740) (:by |rJG4IHzWf) (:text "|\"<未找到选中内容>")
                      |c $ %{} :Expr (:at 1743570124154) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743570127202) (:by |rJG4IHzWf) (:text |json?)
                          |b $ %{} :Expr (:at 1743618529189) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1743618530189) (:by |rJG4IHzWf) (:text |or)
                              |T $ %{} :Expr (:at 1743570128869) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743570131020) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1743570133360) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1743570137302) (:by |rJG4IHzWf) (:text "|\"{{json}}")
                              |b $ %{} :Expr (:at 1743570128869) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743570131020) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1743570133360) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1743618533832) (:by |rJG4IHzWf) (:text "|\"{{JSON}}")
                      |e $ %{} :Expr (:at 1739122590087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1739122598560) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1739122600054) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1739122604221) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1739122604696) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1739122624236) (:by |rJG4IHzWf) (:text |.!generateContentStream)
                                  |X $ %{} :Leaf (:at 1739122622305) (:by |rJG4IHzWf) (:text |model-instance)
                                  |h $ %{} :Expr (:at 1743570569761) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1743570571293) (:by |rJG4IHzWf) (:text |js-object)
                                      |L $ %{} :Expr (:at 1743570716113) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743570960395) (:by |rJG4IHzWf) (:text |:contents)
                                          |b $ %{} :Expr (:at 1743570720305) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743570724052) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1743570911519) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1743570919060) (:by |rJG4IHzWf) (:text |js-object)
                                                  |L $ %{} :Expr (:at 1743570950546) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743570954455) (:by |rJG4IHzWf) (:text |:role)
                                                      |b $ %{} :Leaf (:at 1743570956631) (:by |rJG4IHzWf) (:text "|\"user")
                                                  |T $ %{} :Expr (:at 1743570921655) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1743570926621) (:by |rJG4IHzWf) (:text |:parts)
                                                      |T $ %{} :Expr (:at 1743570929250) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1743570930891) (:by |rJG4IHzWf) (:text |js-array)
                                                          |T $ %{} :Expr (:at 1743570931689) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1743570939010) (:by |rJG4IHzWf) (:text |js-object)
                                                              |T $ %{} :Expr (:at 1743570932972) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1743570936790) (:by |rJG4IHzWf) (:text |:text)
                                                                  |T $ %{} :Leaf (:at 1743570725620) (:by |rJG4IHzWf) (:text |content)
                                      |T $ %{} :Expr (:at 1743570572549) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1743570961799) (:by |rJG4IHzWf) (:text |:generationConfig)
                                          |T $ %{} :Expr (:at 1743570795283) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1743570796715) (:by |rJG4IHzWf) (:text |if)
                                              |L $ %{} :Leaf (:at 1743570797891) (:by |rJG4IHzWf) (:text |json?)
                                              |T $ %{} :Expr (:at 1743570590476) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1743570592225) (:by |rJG4IHzWf) (:text |js-object)
                                                  |T $ %{} :Expr (:at 1743570589704) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743570589704) (:by |rJG4IHzWf) (:text "|\"responseMimeType")
                                                      |b $ %{} :Leaf (:at 1743570589704) (:by |rJG4IHzWf) (:text "|\"application/json")
                                              |b $ %{} :Leaf (:at 1743570801709) (:by |rJG4IHzWf) (:text |js/undefined)
                      |q $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1728103023953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1728103023953) (:by |rJG4IHzWf) (:text "|\"")
                  |e $ %{} :Expr (:at 1743535189770) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1743535193104) (:by |rJG4IHzWf) (:text |js-await)
                      |T $ %{} :Expr (:at 1739123450753) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1739123458708) (:by |rJG4IHzWf) (:text |for-await-stream)
                          |T $ %{} :Expr (:at 1739122644334) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1739122645870) (:by |rJG4IHzWf) (:text |.-stream)
                              |T $ %{} :Leaf (:at 1739122643376) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1739123463729) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1739123463981) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1739123464282) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1739123913291) (:by |rJG4IHzWf) (:text |?)
                                  |T $ %{} :Leaf (:at 1739123465595) (:by |rJG4IHzWf) (:text |chunk)
                              |l $ %{} :Expr (:at 1739123925658) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1739123926251) (:by |rJG4IHzWf) (:text |if)
                                  |L $ %{} :Expr (:at 1739123927417) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1739123929094) (:by |rJG4IHzWf) (:text |some?)
                                      |b $ %{} :Leaf (:at 1739123931239) (:by |rJG4IHzWf) (:text |chunk)
                                  |T $ %{} :Expr (:at 1739123932215) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1739123932676) (:by |rJG4IHzWf) (:text |do)
                                      |T $ %{} :Expr (:at 1739123745232) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1739123745232) (:by |rJG4IHzWf) (:text |swap!)
                                          |b $ %{} :Leaf (:at 1739123745232) (:by |rJG4IHzWf) (:text |*text)
                                          |h $ %{} :Leaf (:at 1739123745232) (:by |rJG4IHzWf) (:text |str)
                                          |l $ %{} :Expr (:at 1739123752902) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123752902) (:by |rJG4IHzWf) (:text |.!text)
                                              |b $ %{} :Leaf (:at 1739123752902) (:by |rJG4IHzWf) (:text |chunk)
                                      |b $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |d!)
                                          |b $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |:states)
                                              |h $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |cursor)
                                              |l $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |->)
                                                  |b $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |:answer)
                                                      |h $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |@*text)
                                                  |l $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |:loading?)
                                                      |h $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |false)
                                                  |o $ %{} :Expr (:at 1739123935511) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |:done?)
                                                      |h $ %{} :Leaf (:at 1739123935511) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |:states)
                                      |h $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |->)
                                          |b $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |state)
                                          |h $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |:answer)
                                              |h $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |@*text)
                                          |l $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |:loading?)
                                              |h $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |false)
                                          |o $ %{} :Expr (:at 1739123944378) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1739123944378) (:by |rJG4IHzWf) (:text |:done?)
                                              |h $ %{} :Leaf (:at 1743535021416) (:by |rJG4IHzWf) (:text |false)
                  |j $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |@*text)
                              |l $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1743535221950) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |:done?)
                                  |h $ %{} :Leaf (:at 1743535221950) (:by |rJG4IHzWf) (:text |true)
        |call-genai-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1744996503800) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1744996503800) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1744996503800) (:by |rJG4IHzWf) (:text |call-genai-msg!)
              |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |variant)
                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |cursor)
                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |state)
                  |l $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |prompt-text)
                  |o $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |nil?)
                      |b $ %{} :Leaf (:at 1744996574433) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                  |h $ %{} :Expr (:at 1744996523115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |reset!)
                      |b $ %{} :Leaf (:at 1744996576252) (:by |rJG4IHzWf) (:text |*gen-ai-new)
                      |h $ %{} :Expr (:at 1744996523115) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |new)
                          |b $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |GoogleGenAI)
                          |h $ %{} :Expr (:at 1744996523115) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |js-object)
                              |b $ %{} :Expr (:at 1744996523115) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |:apiKey)
                                  |b $ %{} :Expr (:at 1744996523115) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996523115) (:by |rJG4IHzWf) (:text |get-gemini-key!)
              |q $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |abort)
              |s $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:loading?)
                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |true)
              |t $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |get-selected)
                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |gen-ai)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |ai)
                                      |b $ %{} :Leaf (:at 1744996582983) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                              |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1746206962793) (:by |rJG4IHzWf) (:text |;)
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |ai)
                              |l $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |ai)
                      |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |.!replace)
                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"<未找到选中内容>")
                      |o $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |json?)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"{{json}}")
                              |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"{{JSON}}")
                      |p $ %{} :Expr (:at 1744996903853) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996906007) (:by |rJG4IHzWf) (:text |think?)
                          |b $ %{} :Expr (:at 1744996909128) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996909128) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1744996909128) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996909128) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1744996909128) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1744996912200) (:by |rJG4IHzWf) (:text "|\"{{think}}")
                              |h $ %{} :Expr (:at 1744996909128) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996909128) (:by |rJG4IHzWf) (:text |.!includes)
                                  |b $ %{} :Leaf (:at 1744996909128) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |h $ %{} :Leaf (:at 1744996916963) (:by |rJG4IHzWf) (:text "|\"{{THINK}}")
                      |q $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996715393) (:by |rJG4IHzWf) (:text |.!generateContentStream)
                                  |a $ %{} :Expr (:at 1744996869434) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996869227) (:by |rJG4IHzWf) (:text |.-models)
                                      |b $ %{} :Leaf (:at 1744996873094) (:by |rJG4IHzWf) (:text |gen-ai)
                                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-object)
                                      |X $ %{} :Expr (:at 1744996722150) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744996726590) (:by |rJG4IHzWf) (:text |:model)
                                          |b $ %{} :Expr (:at 1744996728479) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996728479) (:by |rJG4IHzWf) (:text |pick-model)
                                              |b $ %{} :Leaf (:at 1744996728479) (:by |rJG4IHzWf) (:text |variant)
                                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:contents)
                                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:role)
                                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"user")
                                                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:parts)
                                                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-array)
                                                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-object)
                                                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:text)
                                                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |content)
                                      |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744997104367) (:by |rJG4IHzWf) (:text |:config)
                                          |b $ %{} :Expr (:at 1744996984617) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1744996989402) (:by |rJG4IHzWf) (:text |js/Object.assign)
                                              |L $ %{} :Expr (:at 1744996990284) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744996992613) (:by |rJG4IHzWf) (:text |js-object)
                                                  |b $ %{} :Expr (:at 1744997001012) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744997008070) (:by |rJG4IHzWf) (:text |:thinkingConfig)
                                                      |b $ %{} :Expr (:at 1744997008993) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744997011580) (:by |rJG4IHzWf) (:text |js-object)
                                                          |b $ %{} :Expr (:at 1744997012706) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744997025055) (:by |rJG4IHzWf) (:text |:thinkingBudget)
                                                              |b $ %{} :Expr (:at 1744997040867) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1744997041460) (:by |rJG4IHzWf) (:text |if)
                                                                  |L $ %{} :Leaf (:at 1744997043411) (:by |rJG4IHzWf) (:text |think?)
                                                                  |P $ %{} :Leaf (:at 1744997224962) (:by |rJG4IHzWf) (:text |2000)
                                                                  |T $ %{} :Leaf (:at 1744997025778) (:by |rJG4IHzWf) (:text |0)
                                                          |h $ %{} :Expr (:at 1744997028120) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744997034803) (:by |rJG4IHzWf) (:text |:includeThoughts)
                                                              |b $ %{} :Leaf (:at 1744997038830) (:by |rJG4IHzWf) (:text |think?)
                                                  |h $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |:httpOptions)
                                                      |b $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |js-object)
                                                          |b $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |:baseUrl)
                                                              |b $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text "|\"https://sf.chenyong.life")
                                                          |h $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |:signal)
                                                              |b $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |let)
                                                                  |b $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |abort)
                                                                          |b $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |new)
                                                                              |b $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |js/AbortController)
                                                                  |h $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |reset!)
                                                                      |b $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |*abort-control)
                                                                      |h $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |abort)
                                                                  |l $ %{} :Expr (:at 1744997158804) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |.-signal)
                                                                      |b $ %{} :Leaf (:at 1744997158804) (:by |rJG4IHzWf) (:text |abort)
                                                  |l $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1746207173015) (:by |rJG4IHzWf) (:text |:abortSignal)
                                                      |b $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |let)
                                                          |b $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |abort)
                                                                  |b $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |new)
                                                                      |b $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |js/AbortController)
                                                          |h $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |reset!)
                                                              |b $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |*abort-control)
                                                              |h $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |abort)
                                                          |l $ %{} :Expr (:at 1746207120795) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |.-signal)
                                                              |b $ %{} :Leaf (:at 1746207120795) (:by |rJG4IHzWf) (:text |abort)
                                              |T $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |if)
                                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |json?)
                                                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-object)
                                                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"responseMimeType")
                                                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"application/json")
                                                  |l $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js/undefined)
                      |s $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text "|\"")
                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |js-await)
                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |for-await-stream)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |sdk-result)
                          |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996793983) (:by |rJG4IHzWf) (:text |?)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |chunk)
                              |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |some?)
                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |chunk)
                                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |do)
                                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |swap!)
                                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |*text)
                                          |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |str)
                                          |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996798115) (:by |rJG4IHzWf) (:text |.-text)
                                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |chunk)
                                      |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |d!)
                                          |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:states)
                                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |cursor)
                                              |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |->)
                                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:answer)
                                                      |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |@*text)
                                                  |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:loading?)
                                                      |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |false)
                                                  |o $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:done?)
                                                      |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |false)
                              |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:states)
                                      |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |->)
                                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |state)
                                          |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:answer)
                                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |@*text)
                                          |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:loading?)
                                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |false)
                                          |o $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:done?)
                                              |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |@*text)
                              |l $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1744996505254) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |:done?)
                                  |h $ %{} :Leaf (:at 1744996505254) (:by |rJG4IHzWf) (:text |true)
        |call-imagin-msg! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1744739404439) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1744739404439) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1744739404439) (:by |rJG4IHzWf) (:text |call-imagin-msg!)
              |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |variant)
                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |cursor)
                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |state)
                  |l $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |prompt-text)
                  |o $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |nil?)
                      |b $ %{} :Leaf (:at 1744996553599) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                  |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |reset!)
                      |b $ %{} :Leaf (:at 1744996569759) (:by |rJG4IHzWf) (:text |*gen-ai-new)
                      |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |new)
                          |b $ %{} :Leaf (:at 1744739515215) (:by |rJG4IHzWf) (:text |GoogleGenAI)
                          |h $ %{} :Expr (:at 1744739516067) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1744739521608) (:by |rJG4IHzWf) (:text |js-object)
                              |T $ %{} :Expr (:at 1744739523028) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1744739527644) (:by |rJG4IHzWf) (:text |:apiKey)
                                  |T $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |get-gemini-key!)
              |p $ %{} :Expr (:at 1744741812227) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1744741822813) (:by |rJG4IHzWf) (:text |if-let)
                  |T $ %{} :Expr (:at 1744741816312) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744741813294) (:by |rJG4IHzWf) (:text |target)
                      |b $ %{} :Expr (:at 1744741813294) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744741813294) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                          |b $ %{} :Leaf (:at 1744741813294) (:by |rJG4IHzWf) (:text "|\".show-image")
                  |b $ %{} :Expr (:at 1744741827128) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744741830806) (:by |rJG4IHzWf) (:text |.!setAttribute)
                      |b $ %{} :Leaf (:at 1744741832553) (:by |rJG4IHzWf) (:text |target)
                      |h $ %{} :Leaf (:at 1744741838899) (:by |rJG4IHzWf) (:text "|\"src")
                      |l $ %{} :Leaf (:at 1744741833748) (:by |rJG4IHzWf) (:text "|\"")
              |q $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |if-let)
                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |abort)
                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |deref)
                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |*abort-control)
                  |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |js/console.warn)
                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text "|\"Aborting prev")
                      |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |.!abort)
                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |abort)
              |s $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:loading?)
                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |true)
              |t $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |selected)
                          |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |get-selected)
                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |gen-ai)
                          |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |let)
                              |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |ai)
                                      |b $ %{} :Leaf (:at 1744996564141) (:by |rJG4IHzWf) (:text |@*gen-ai-new)
                              |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |ai)
                              |l $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |ai)
                      |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |content)
                          |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |.!replace)
                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |prompt-text)
                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text "|\"{{selected}}")
                              |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |or)
                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text "|\"<未找到选中内容>")
                      |q $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |sdk-result)
                          |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |js-await)
                              |b $ %{} :Expr (:at 1744739548120) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744740650804) (:by |rJG4IHzWf) (:text |.!generateContent)
                                  |b $ %{} :Expr (:at 1744739554125) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1744739557239) (:by |rJG4IHzWf) (:text |.-models)
                                      |T $ %{} :Leaf (:at 1744739548120) (:by |rJG4IHzWf) (:text |gen-ai)
                                  |h $ %{} :Expr (:at 1744739548120) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739548120) (:by |rJG4IHzWf) (:text |js-object)
                                      |b $ %{} :Expr (:at 1744739548120) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744739548120) (:by |rJG4IHzWf) (:text |:model)
                                          |b $ %{} :Leaf (:at 1744740147640) (:by |rJG4IHzWf) (:text "|\"gemini-2.0-flash-exp-image-generation")
                                      |h $ %{} :Expr (:at 1744739573216) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744739573216) (:by |rJG4IHzWf) (:text |:contents)
                                          |b $ %{} :Leaf (:at 1744739621764) (:by |rJG4IHzWf) (:text |content)
                                      |l $ %{} :Expr (:at 1744739575864) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744739576749) (:by |rJG4IHzWf) (:text |:config)
                                          |b $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |js-object)
                                              |b $ %{} :Expr (:at 1744739593881) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1744739596771) (:by |rJG4IHzWf) (:text |:httpOptions)
                                                  |T $ %{} :Expr (:at 1744739598631) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1744739600161) (:by |rJG4IHzWf) (:text |js-object)
                                                      |T $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |:baseUrl)
                                                          |b $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text "|\"https://sf.chenyong.life")
                                              |h $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |:signal)
                                                  |b $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |let)
                                                      |b $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |abort)
                                                              |b $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |new)
                                                                  |b $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |js/AbortController)
                                                      |h $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |reset!)
                                                          |b $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |*abort-control)
                                                          |h $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |abort)
                                                      |l $ %{} :Expr (:at 1744739580851) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |.-signal)
                                                          |b $ %{} :Leaf (:at 1744739580851) (:by |rJG4IHzWf) (:text |abort)
                                              |l $ %{} :Expr (:at 1744740156064) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744740158165) (:by |rJG4IHzWf) (:text |:responseModalities)
                                                  |b $ %{} :Expr (:at 1744740160954) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744740163594) (:by |rJG4IHzWf) (:text |js-array)
                                                      |X $ %{} :Expr (:at 1744740174695) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1744740177378) (:by |rJG4IHzWf) (:text |.-TEXT)
                                                          |T $ %{} :Leaf (:at 1744740174060) (:by |rJG4IHzWf) (:text |Modality)
                                                      |Z $ %{} :Expr (:at 1744740174695) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1744740182118) (:by |rJG4IHzWf) (:text |.-IMAGE)
                                                          |T $ %{} :Leaf (:at 1744740174060) (:by |rJG4IHzWf) (:text |Modality)
                      |s $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text "|\"")
                  |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |js-await)
                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744740691012) (:by |rJG4IHzWf) (:text |->)
                          |a $ %{} :Leaf (:at 1744740693327) (:by |rJG4IHzWf) (:text |sdk-result)
                          |d $ %{} :Leaf (:at 1744740698768) (:by |rJG4IHzWf) (:text |.-candidates)
                          |f $ %{} :Leaf (:at 1744740700596) (:by |rJG4IHzWf) (:text |.-0)
                          |g $ %{} :Leaf (:at 1744740702858) (:by |rJG4IHzWf) (:text |.-content)
                          |gT $ %{} :Leaf (:at 1744740705900) (:by |rJG4IHzWf) (:text |.-parts)
                          |h $ %{} :Expr (:at 1744740708435) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1744740712258) (:by |rJG4IHzWf) (:text |.!forEach)
                              |T $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |?)
                                      |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |chunk)
                                      |h $ %{} :Leaf (:at 1744740759697) (:by |rJG4IHzWf) (:text |_a)
                                      |l $ %{} :Leaf (:at 1744740761161) (:by |rJG4IHzWf) (:text |_b)
                                  |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |if)
                                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |some?)
                                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |chunk)
                                      |h $ %{} :Expr (:at 1744740221593) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1744740231105) (:by |rJG4IHzWf) (:text |if-let)
                                          |L $ %{} :Expr (:at 1744740231937) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744740232962) (:by |rJG4IHzWf) (:text |text)
                                              |b $ %{} :Expr (:at 1744740233759) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744740233759) (:by |rJG4IHzWf) (:text |.-text)
                                                  |b $ %{} :Leaf (:at 1744740233759) (:by |rJG4IHzWf) (:text |chunk)
                                          |T $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |do)
                                              |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |swap!)
                                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |*text)
                                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |str)
                                                  |l $ %{} :Leaf (:at 1744740237234) (:by |rJG4IHzWf) (:text |text)
                                              |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |d!)
                                                  |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |::)
                                                      |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:states)
                                                      |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |cursor)
                                                      |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |->)
                                                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |state)
                                                          |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:answer)
                                                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |@*text)
                                                          |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:loading?)
                                                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |false)
                                                          |o $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:done?)
                                                              |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |false)
                                          |b $ %{} :Expr (:at 1744740788082) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744740790192) (:by |rJG4IHzWf) (:text |if-let)
                                              |b $ %{} :Expr (:at 1744740790733) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744740792246) (:by |rJG4IHzWf) (:text |image-data)
                                                  |b $ %{} :Expr (:at 1744740797474) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744740803939) (:by |rJG4IHzWf) (:text |.-inlineData)
                                                      |b $ %{} :Leaf (:at 1744740806420) (:by |rJG4IHzWf) (:text |chunk)
                                              |h $ %{} :Expr (:at 1744740811857) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744740812285) (:by |rJG4IHzWf) (:text |let)
                                                  |b $ %{} :Expr (:at 1744740813794) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1744740815533) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741053357) (:by |rJG4IHzWf) (:text |image-blob)
                                                          |b $ %{} :Expr (:at 1744741031886) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744741032137) (:by |rJG4IHzWf) (:text |base64ToBlob)
                                                              |b $ %{} :Expr (:at 1744741036388) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1744741038238) (:by |rJG4IHzWf) (:text |.-data)
                                                                  |T $ %{} :Leaf (:at 1744741034609) (:by |rJG4IHzWf) (:text |image-data)
                                                      |b $ %{} :Expr (:at 1744741438046) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741441938) (:by |rJG4IHzWf) (:text |url)
                                                          |b $ %{} :Expr (:at 1744741442621) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744741443458) (:by |rJG4IHzWf) (:text |js/URL.createObjectURL)
                                                              |b $ %{} :Leaf (:at 1744741445906) (:by |rJG4IHzWf) (:text |image-blob)
                                                      |h $ %{} :Expr (:at 1744741476463) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741477306) (:by |rJG4IHzWf) (:text |target)
                                                          |b $ %{} :Expr (:at 1744741477695) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744741477695) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                                                              |b $ %{} :Leaf (:at 1744741477695) (:by |rJG4IHzWf) (:text "|\".show-image")
                                                  |h $ %{} :Expr (:at 1744741481209) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744741483765) (:by |rJG4IHzWf) (:text |->)
                                                      |b $ %{} :Leaf (:at 1744741484185) (:by |rJG4IHzWf) (:text |target)
                                                      |h $ %{} :Expr (:at 1744741485459) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741488697) (:by |rJG4IHzWf) (:text |.!setAttribute)
                                                          |b $ %{} :Leaf (:at 1744741534847) (:by |rJG4IHzWf) (:text "|\"src")
                                                          |h $ %{} :Leaf (:at 1744741491989) (:by |rJG4IHzWf) (:text |url)
                                                  |l $ %{} :Expr (:at 1744741503798) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1744741555815) (:by |rJG4IHzWf) (:text |;)
                                                      |T $ %{} :Leaf (:at 1744741504859) (:by |rJG4IHzWf) (:text |js/URL.revokeObjectURL)
                                                      |b $ %{} :Leaf (:at 1744741506881) (:by |rJG4IHzWf) (:text |url)
                                                  |o $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |do)
                                                      |b $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |swap!)
                                                          |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |*text)
                                                          |h $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |str)
                                                          |l $ %{} :Leaf (:at 1744741737479) (:by |rJG4IHzWf) (:text "|\"(image ready)")
                                                      |h $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |d!)
                                                          |b $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |::)
                                                              |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |:states)
                                                              |h $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |cursor)
                                                              |l $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |->)
                                                                  |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |state)
                                                                  |h $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |:answer)
                                                                      |h $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |@*text)
                                                                  |l $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |:loading?)
                                                                      |h $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |false)
                                                                  |o $ %{} :Expr (:at 1744741725113) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |:done?)
                                                                      |h $ %{} :Leaf (:at 1744741725113) (:by |rJG4IHzWf) (:text |false)
                                  |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |d!)
                                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |::)
                                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:states)
                                          |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |cursor)
                                          |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |->)
                                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |state)
                                              |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:answer)
                                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |@*text)
                                              |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:loading?)
                                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |false)
                                              |o $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:done?)
                                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |@*text)
                              |l $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1744739405770) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |:done?)
                                  |h $ %{} :Leaf (:at 1744739405770) (:by |rJG4IHzWf) (:text |true)
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
              |s $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:states)
                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                      |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |state)
                          |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:answer)
                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |nil)
                          |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
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
                      |s $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text "|\"")
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
                                          |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:states)
                                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |->)
                                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:answer)
                                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |@*text)
                                                  |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:loading?)
                                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |false)
                                                  |o $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:done?)
                                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |false)
                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |::)
                                      |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:states)
                                      |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |->)
                                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |state)
                                          |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:answer)
                                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |@*text)
                                          |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:loading?)
                                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |false)
                                          |o $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:done?)
                                              |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |false)
                  |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |::)
                          |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:states)
                          |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |cursor)
                          |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:answer)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |@*text)
                              |l $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:loading?)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |false)
                              |o $ %{} :Expr (:at 1745685233559) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |:done?)
                                  |h $ %{} :Leaf (:at 1745685233559) (:by |rJG4IHzWf) (:text |true)
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
                      |t $ %{} :Expr (:at 1728103039591) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1728103040288) (:by |rJG4IHzWf) (:text |model)
                          |b $ %{} :Expr (:at 1728103042777) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1728103045241) (:by |rJG4IHzWf) (:text |either)
                              |b $ %{} :Expr (:at 1728103046470) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1728103047388) (:by |rJG4IHzWf) (:text |:model)
                                  |b $ %{} :Leaf (:at 1738811767511) (:by |rJG4IHzWf) (:text |state)
                              |h $ %{} :Leaf (:at 1728103051224) (:by |rJG4IHzWf) (:text |:gemini)
                      |u $ %{} :Expr (:at 1729360291464) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360294074) (:by |rJG4IHzWf) (:text |model-plugin)
                          |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |use-modal-menu)
                              |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1729360341092) (:by |rJG4IHzWf) (:text |:model)
                              |h $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1729360595928) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1729360306117) (:by |rJG4IHzWf) (:text "||Select model")
                                  |h $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:style)
                                      |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:width)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |300)
                                  |l $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:backdrop-style)
                                      |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |{})
                                  |o $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1729360346868) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:card-class)
                                      |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |style-card)
                                  |q $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1729360346278) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:backdrop-class)
                                      |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |style-backdrop)
                                  |s $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1729360348034) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:confirm-class)
                                      |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |style-confirm)
                                  |t $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:items)
                                      |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1738811114508) (:by |rJG4IHzWf) (:text |:gemini-flash)
                                              |l $ %{} :Leaf (:at 1734454146867) (:by |rJG4IHzWf) (:text "||Gemini Flash")
                                          |c $ %{} :Expr (:at 1738811938766) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1738811938766) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1738811938766) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1738811938766) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                                              |l $ %{} :Leaf (:at 1738811938766) (:by |rJG4IHzWf) (:text "||Gemini Flash Lite")
                                          |e $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1738811150998) (:by |rJG4IHzWf) (:text |:gemini-pro)
                                              |l $ %{} :Leaf (:at 1737566015302) (:by |rJG4IHzWf) (:text "||Gemini Pro")
                                          |eD $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1744649694650) (:by |rJG4IHzWf) (:text |:gemini-pro-1.5)
                                              |l $ %{} :Leaf (:at 1744649696565) (:by |rJG4IHzWf) (:text "||Gemini Pro 1.5")
                                          |eL $ %{} :Expr (:at 1744739366288) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744739366704) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1744739368169) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1744739372139) (:by |rJG4IHzWf) (:text |:imagin-3)
                                              |l $ %{} :Leaf (:at 1744739376520) (:by |rJG4IHzWf) (:text "|\"Imagin 3")
                                          |eT $ %{} :Expr (:at 1738811378124) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1738811378124) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1738811378124) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1738811378124) (:by |rJG4IHzWf) (:text |:gemini-flash-thinking)
                                              |l $ %{} :Leaf (:at 1738811378124) (:by |rJG4IHzWf) (:text "||Gemini Flash thinking")
                                          |f $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1735371169230) (:by |rJG4IHzWf) (:text |:gemini-thinking)
                                              |l $ %{} :Leaf (:at 1735371162919) (:by |rJG4IHzWf) (:text "||Gemini thinking")
                                          |g $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1735371412635) (:by |rJG4IHzWf) (:text |:gemini-learnlm)
                                              |l $ %{} :Leaf (:at 1735371417308) (:by |rJG4IHzWf) (:text "||Gemini LearnLM")
                                          |gT $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1744995894355) (:by |rJG4IHzWf) (:text |:gemma)
                                              |l $ %{} :Leaf (:at 1744995902563) (:by |rJG4IHzWf) (:text "||Gemma 3 27b")
                                          |gj $ %{} :Expr (:at 1745687290530) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-3.7-sonnet)
                                              |l $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text "|\"Openrouter Claude 3.7 Sonnet")
                                          |gn $ %{} :Expr (:at 1745687290530) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1745687290530) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1745687389071) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-3.7-sonnet:thinking)
                                              |l $ %{} :Leaf (:at 1745687395422) (:by |rJG4IHzWf) (:text "|\"Openrouter Claude 3.7 Sonnet Thinking")
                                          |gr $ %{} :Expr (:at 1745687294489) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text |:openrouter/openai/gpt-4o)
                                              |l $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text "|\"Openrouter GPT 4o")
                                          |gv $ %{} :Expr (:at 1745687294489) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1745687294489) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1745687751698) (:by |rJG4IHzWf) (:text |:openrouter/deepseek/deepseek-chat-v3-0324:free)
                                              |l $ %{} :Leaf (:at 1745687755485) (:by |rJG4IHzWf) (:text "|\"Openrouter deepseek/deepseek-chat-v3-0324:free")
                                          |h $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1740504985229) (:by |rJG4IHzWf) (:text |:claude)
                                              |l $ %{} :Leaf (:at 1740505331952) (:by |rJG4IHzWf) (:text "|\"Claude 3.5")
                                          |j $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1740504990738) (:by |rJG4IHzWf) (:text |:claude-3.7)
                                              |l $ %{} :Leaf (:at 1740504996212) (:by |rJG4IHzWf) (:text "|\"Claude 3.7")
                                          |k $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1740505000420) (:by |rJG4IHzWf) (:text |:claude-3.7-thinking)
                                              |l $ %{} :Leaf (:at 1740505007441) (:by |rJG4IHzWf) (:text "|\"Claude 3.7 Thinking")
                                          |l $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |::)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:item)
                                              |h $ %{} :Leaf (:at 1729360997818) (:by |rJG4IHzWf) (:text |:deepinfra)
                                              |l $ %{} :Leaf (:at 1729360337028) (:by |rJG4IHzWf) (:text "|\"Deepinfra")
                                  |u $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |:on-result)
                                      |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |result)
                                              |b $ %{} :Leaf (:at 1729360299061) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1729360626583) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1729360627340) (:by |rJG4IHzWf) (:text |d!)
                                              |L $ %{} :Leaf (:at 1729360629258) (:by |rJG4IHzWf) (:text |cursor)
                                              |T $ %{} :Expr (:at 1729360629840) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1729360631223) (:by |rJG4IHzWf) (:text |assoc)
                                                  |L $ %{} :Leaf (:at 1729360631854) (:by |rJG4IHzWf) (:text |state)
                                                  |P $ %{} :Leaf (:at 1729360633261) (:by |rJG4IHzWf) (:text |:model)
                                                  |T $ %{} :Expr (:at 1729360299061) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1729360621312) (:by |rJG4IHzWf) (:text |nth)
                                                      |X $ %{} :Leaf (:at 1729360626025) (:by |rJG4IHzWf) (:text |result)
                                                      |b $ %{} :Leaf (:at 1729360621780) (:by |rJG4IHzWf) (:text |1)
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
                                          |b $ %{} :Leaf (:at 1728102216443) (:by |rJG4IHzWf) (:text |style-message-list)
                              |e $ %{} :Expr (:at 1744741393634) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1744741393634) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |=)
                                      |b $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |:imagin-3)
                                      |h $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |model)
                                  |h $ %{} :Expr (:at 1744741393634) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |img)
                                      |b $ %{} :Expr (:at 1744741393634) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1744741393634) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text |:class-name)
                                              |b $ %{} :Expr (:at 1744743036307) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1744743038194) (:by |rJG4IHzWf) (:text |str-spaced)
                                                  |L $ %{} :Leaf (:at 1744743044597) (:by |rJG4IHzWf) (:text |style-image)
                                                  |T $ %{} :Leaf (:at 1744741393634) (:by |rJG4IHzWf) (:text "|\"show-image")
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
                                      |h $ %{} :Expr (:at 1743534815013) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1743791561079) (:by |rJG4IHzWf) (:text |memof1-call-by)
                                          |L $ %{} :Leaf (:at 1743791670288) (:by |rJG4IHzWf) (:text |:abort-loading)
                                          |T $ %{} :Leaf (:at 1743534817391) (:by |rJG4IHzWf) (:text |comp-abort)
                                          |b $ %{} :Expr (:at 1743534818469) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743534818469) (:by |rJG4IHzWf) (:text |str)
                                              |b $ %{} :Expr (:at 1743534818469) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1743534818469) (:by |rJG4IHzWf) (:text |turn-str)
                                                  |b $ %{} :Leaf (:at 1743534818469) (:by |rJG4IHzWf) (:text |model)
                                              |h $ %{} :Leaf (:at 1743618153123) (:by |rJG4IHzWf) (:text "|\" loading...")
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
                                          |h $ %{} :Expr (:at 1743618301005) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1743618302869) (:by |rJG4IHzWf) (:text |if)
                                              |L $ %{} :Expr (:at 1743618303886) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1743618306196) (:by |rJG4IHzWf) (:text |json-pattern?)
                                                  |b $ %{} :Expr (:at 1743618309011) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743618309011) (:by |rJG4IHzWf) (:text |:answer)
                                                      |b $ %{} :Leaf (:at 1743618309011) (:by |rJG4IHzWf) (:text |state)
                                              |P $ %{} :Expr (:at 1743618313222) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1743618317026) (:by |rJG4IHzWf) (:text |pre)
                                                  |b $ %{} :Expr (:at 1743618317845) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743618318173) (:by |rJG4IHzWf) (:text |{})
                                                      |X $ %{} :Expr (:at 1743618354598) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1743618357523) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1743618465273) (:by |rJG4IHzWf) (:text |style-code-content)
                                                      |b $ %{} :Expr (:at 1743618318454) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1743618320108) (:by |rJG4IHzWf) (:text |:inner-text)
                                                          |b $ %{} :Expr (:at 1743618321522) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1743618321522) (:by |rJG4IHzWf) (:text |:answer)
                                                              |b $ %{} :Leaf (:at 1743618321522) (:by |rJG4IHzWf) (:text |state)
                                              |T $ %{} :Expr (:at 1722445823902) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1743789389667) (:by |rJG4IHzWf) (:text |memof1-call)
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
                                          |l $ %{} :Expr (:at 1722482006086) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1722482007064) (:by |rJG4IHzWf) (:text |div)
                                              |b $ %{} :Expr (:at 1722482007395) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722482007688) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1722482015893) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722482017960) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Leaf (:at 1722482021013) (:by |rJG4IHzWf) (:text |css/row-parted)
                                              |e $ %{} :Expr (:at 1735371435010) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1735371435803) (:by |rJG4IHzWf) (:text |div)
                                                  |L $ %{} :Expr (:at 1735371449589) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1735371450153) (:by |rJG4IHzWf) (:text |{})
                                                      |T $ %{} :Expr (:at 1735371446281) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1735371446281) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Expr (:at 1735371446281) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1735371446281) (:by |rJG4IHzWf) (:text |str-spaced)
                                                              |b $ %{} :Leaf (:at 1735371446281) (:by |rJG4IHzWf) (:text |css/row-middle)
                                                              |h $ %{} :Leaf (:at 1735371446281) (:by |rJG4IHzWf) (:text |css/gap8)
                                                  |T $ %{} :Expr (:at 1734771427360) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |5 $ %{} :Leaf (:at 1734771432381) (:by |rJG4IHzWf) (:text |if)
                                                      |D $ %{} :Expr (:at 1734771431210) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1734771431210) (:by |rJG4IHzWf) (:text |:done?)
                                                          |b $ %{} :Leaf (:at 1734771431210) (:by |rJG4IHzWf) (:text |state)
                                                      |P $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |a)
                                                          |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |{})
                                                              |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:inner-text)
                                                                  |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |turn-str)
                                                                      |b $ %{} :Leaf (:at 1738811477364) (:by |rJG4IHzWf) (:text |model)
                                                              |h $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:class-name)
                                                                  |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |str-spaced)
                                                                      |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |style-a-toggler)
                                                                      |h $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |css/font-fancy)
                                                              |l $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:style)
                                                                  |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |{})
                                                                      |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:opacity)
                                                                          |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |if)
                                                                              |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |=)
                                                                                  |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |model)
                                                                                  |h $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:anthropic)
                                                                              |h $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |1)
                                                                              |l $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |0.3)
                                                              |o $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:on-click)
                                                                  |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |fn)
                                                                      |b $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |e)
                                                                          |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |d!)
                                                                      |h $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |;)
                                                                          |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |d!)
                                                                          |h $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |::)
                                                                              |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |:change-model)
                                                                      |l $ %{} :Expr (:at 1738811468285) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |.show)
                                                                          |b $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |model-plugin)
                                                                          |h $ %{} :Leaf (:at 1738811468285) (:by |rJG4IHzWf) (:text |d!)
                                                      |b $ %{} :Expr (:at 1734771434966) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1734771434966) (:by |rJG4IHzWf) (:text |div)
                                                          |b $ %{} :Expr (:at 1734771434966) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1734771434966) (:by |rJG4IHzWf) (:text |{})
                                                          |l $ %{} :Expr (:at 1743534831936) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1743791544305) (:by |rJG4IHzWf) (:text |memof1-call-by)
                                                              |L $ %{} :Leaf (:at 1743791666549) (:by |rJG4IHzWf) (:text |:abort-streaming)
                                                              |T $ %{} :Leaf (:at 1743534838825) (:by |rJG4IHzWf) (:text |comp-abort)
                                                              |h $ %{} :Expr (:at 1743534846789) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1743534846789) (:by |rJG4IHzWf) (:text |str)
                                                                  |b $ %{} :Expr (:at 1743534846789) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1743534846789) (:by |rJG4IHzWf) (:text |turn-str)
                                                                      |b $ %{} :Leaf (:at 1743534846789) (:by |rJG4IHzWf) (:text |model)
                                                                  |h $ %{} :Leaf (:at 1743617821177) (:by |rJG4IHzWf) (:text "|\" streaming...")
                                              |h $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |if)
                                                  |b $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |:done?)
                                                      |b $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |div)
                                                      |b $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |{})
                                                          |b $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |:class-name)
                                                              |b $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |str-spaced)
                                                                  |b $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |css/row-middle)
                                                      |h $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |comp-copy)
                                                          |b $ %{} :Expr (:at 1735371460982) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |:answer)
                                                              |b $ %{} :Leaf (:at 1735371460982) (:by |rJG4IHzWf) (:text |state)
                              |l $ %{} :Expr (:at 1734771341800) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1734771341800) (:by |rJG4IHzWf) (:text |=<)
                                  |b $ %{} :Leaf (:at 1734771341800) (:by |rJG4IHzWf) (:text |nil)
                                  |h $ %{} :Leaf (:at 1734771341800) (:by |rJG4IHzWf) (:text |200)
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
                                  |k $ %{} :Leaf (:at 1728103090535) (:by |rJG4IHzWf) (:text |model)
                                  |l $ %{} :Leaf (:at 1722536447091) (:by |rJG4IHzWf) (:text |d!)
                      |u $ %{} :Expr (:at 1729360353830) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360355683) (:by |rJG4IHzWf) (:text |.render)
                          |b $ %{} :Leaf (:at 1729360356058) (:by |rJG4IHzWf) (:text |model-plugin)
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
                  |T $ %{} :Expr (:at 1723603372844) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1723603373761) (:by |rJG4IHzWf) (:text |[])
                      |L $ %{} :Expr (:at 1723603375458) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723603383380) (:by |rJG4IHzWf) (:text |effect-focus)
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
                                                  |h $ %{} :Expr (:at 1744033011488) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1744033013622) (:by |rJG4IHzWf) (:text |or)
                                                      |T $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |:meta?)
                                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                                      |b $ %{} :Expr (:at 1722536206569) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1744033018115) (:by |rJG4IHzWf) (:text |:ctrl?)
                                                          |b $ %{} :Leaf (:at 1722536206569) (:by |rJG4IHzWf) (:text |e)
                                              |l $ %{} :Expr (:at 1722536419205) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1722536419900) (:by |rJG4IHzWf) (:text |on-submit)
                                                  |b $ %{} :Expr (:at 1722536423510) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1722536424418) (:by |rJG4IHzWf) (:text |:content)
                                                      |b $ %{} :Leaf (:at 1722536426394) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1722536427678) (:by |rJG4IHzWf) (:text |d!)
                                  |t $ %{} :Expr (:at 1743789654239) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1743789657842) (:by |rJG4IHzWf) (:text |:on-focus)
                                      |b $ %{} :Expr (:at 1743789658169) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743789658421) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1743789659028) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743789659217) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1743789659715) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1743789660367) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743789665209) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1743789665470) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1743789665702) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789666481) (:by |rJG4IHzWf) (:text |target)
                                                      |b $ %{} :Expr (:at 1743789671868) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1743789676016) (:by |rJG4IHzWf) (:text |.-target)
                                                          |T $ %{} :Expr (:at 1743789666857) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1743789669577) (:by |rJG4IHzWf) (:text |:event)
                                                              |b $ %{} :Leaf (:at 1743789670190) (:by |rJG4IHzWf) (:text |e)
                                                  |b $ %{} :Expr (:at 1743789800120) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789804226) (:by |rJG4IHzWf) (:text |class-list)
                                                      |b $ %{} :Expr (:at 1743789804928) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1743789811521) (:by |rJG4IHzWf) (:text |.-classList)
                                                          |b $ %{} :Leaf (:at 1743789813183) (:by |rJG4IHzWf) (:text |target)
                                              |h $ %{} :Expr (:at 1743789817355) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1743789817696) (:by |rJG4IHzWf) (:text |if)
                                                  |b $ %{} :Expr (:at 1743789826415) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1743789827001) (:by |rJG4IHzWf) (:text |not)
                                                      |T $ %{} :Expr (:at 1743789818052) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1743789887751) (:by |rJG4IHzWf) (:text |.!contains)
                                                          |b $ %{} :Leaf (:at 1743789821670) (:by |rJG4IHzWf) (:text |class-list)
                                                          |h $ %{} :Leaf (:at 1743789854087) (:by |rJG4IHzWf) (:text "|\"focus-within")
                                                  |h $ %{} :Expr (:at 1743789828059) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789842706) (:by |rJG4IHzWf) (:text |.!add)
                                                      |b $ %{} :Leaf (:at 1743789844159) (:by |rJG4IHzWf) (:text |class-list)
                                                      |h $ %{} :Leaf (:at 1743789877875) (:by |rJG4IHzWf) (:text "|\"focus-within")
                                  |u $ %{} :Expr (:at 1743789654239) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1743789860058) (:by |rJG4IHzWf) (:text |:on-blur)
                                      |b $ %{} :Expr (:at 1743789658169) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1743789658421) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1743789659028) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743789659217) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1743789659715) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1743789660367) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1743789665209) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1743789665470) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1743789665702) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789666481) (:by |rJG4IHzWf) (:text |target)
                                                      |b $ %{} :Expr (:at 1743789671868) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1743789676016) (:by |rJG4IHzWf) (:text |.-target)
                                                          |T $ %{} :Expr (:at 1743789666857) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1743789669577) (:by |rJG4IHzWf) (:text |:event)
                                                              |b $ %{} :Leaf (:at 1743789670190) (:by |rJG4IHzWf) (:text |e)
                                                  |b $ %{} :Expr (:at 1743789800120) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789804226) (:by |rJG4IHzWf) (:text |class-list)
                                                      |b $ %{} :Expr (:at 1743789804928) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1743789811521) (:by |rJG4IHzWf) (:text |.-classList)
                                                          |b $ %{} :Leaf (:at 1743789813183) (:by |rJG4IHzWf) (:text |target)
                                              |h $ %{} :Expr (:at 1743789817355) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1743789817696) (:by |rJG4IHzWf) (:text |if)
                                                  |b $ %{} :Expr (:at 1743789818052) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789886262) (:by |rJG4IHzWf) (:text |.!contains)
                                                      |b $ %{} :Leaf (:at 1743789821670) (:by |rJG4IHzWf) (:text |class-list)
                                                      |h $ %{} :Leaf (:at 1743789854087) (:by |rJG4IHzWf) (:text "|\"focus-within")
                                                  |h $ %{} :Expr (:at 1743789828059) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1743789870113) (:by |rJG4IHzWf) (:text |.!remove)
                                                      |b $ %{} :Leaf (:at 1743789844159) (:by |rJG4IHzWf) (:text |class-list)
                                                      |h $ %{} :Leaf (:at 1743789874092) (:by |rJG4IHzWf) (:text "|\"focus-within")
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
        |for-await-stream $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1739123475552) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1739123475552) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1739123475552) (:by |rJG4IHzWf) (:text |for-await-stream)
              |h $ %{} :Expr (:at 1739123475552) (:by |rJG4IHzWf)
                :data $ {}
                  |H $ %{} :Leaf (:at 1739123479211) (:by |rJG4IHzWf) (:text |stream)
                  |S $ %{} :Leaf (:at 1739123481934) (:by |rJG4IHzWf) (:text |f)
              |j $ %{} :Expr (:at 1739123684182) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1739123686792) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1739123689149) (:by |rJG4IHzWf) (:text |async)
              |l $ %{} :Expr (:at 1739123482633) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1739123485827) (:by |rJG4IHzWf) (:text |&raw-code)
                  |b $ %{} :Leaf (:at 1739123553981) (:by |rJG4IHzWf) (:text "|\"for await (let item of stream) {\n  f(item)\n}\n\nreturn undefined")
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
                  |X $ %{} :Leaf (:at 1744995662204) (:by |rJG4IHzWf) (:text "|\"gemini-2.5-flash-preview-04-17")
                  |b $ %{} :Expr (:at 1735371297708) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1735371304843) (:by |rJG4IHzWf) (:text |:gemini-thinking)
                      |T $ %{} :Leaf (:at 1735371364229) (:by |rJG4IHzWf) (:text "|\"gemini-2.0-flash-thinking-exp-1219")
                  |h $ %{} :Expr (:at 1735371297708) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1738811261843) (:by |rJG4IHzWf) (:text |:gemini-pro)
                      |T $ %{} :Leaf (:at 1744649733621) (:by |rJG4IHzWf) (:text "|\"gemini-2.5-pro-exp-03-25")
                  |i $ %{} :Expr (:at 1744649669592) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744649677644) (:by |rJG4IHzWf) (:text |:gemini-pro-1.5)
                      |b $ %{} :Leaf (:at 1744649679858) (:by |rJG4IHzWf) (:text "|\"gemini-1.5-pro")
                  |j $ %{} :Expr (:at 1738811293395) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1738811298297) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                      |b $ %{} :Leaf (:at 1738811607262) (:by |rJG4IHzWf) (:text "|\"gemini-2.0-flash-lite-preview-02-05")
                  |l $ %{} :Expr (:at 1735371297708) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1735371384577) (:by |rJG4IHzWf) (:text |:gemini-learnlm)
                      |T $ %{} :Leaf (:at 1735371381984) (:by |rJG4IHzWf) (:text "|\"learnlm-1.5-pro-experimental")
                  |o $ %{} :Expr (:at 1735371297708) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1737565986571) (:by |rJG4IHzWf) (:text |:gemini-flash-thinking)
                      |T $ %{} :Leaf (:at 1737565967533) (:by |rJG4IHzWf) (:text "|\"gemini-2.0-flash-thinking-exp-01-21")
                  |q $ %{} :Expr (:at 1744995919322) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1744995921383) (:by |rJG4IHzWf) (:text |:gemma)
                      |b $ %{} :Leaf (:at 1744995926511) (:by |rJG4IHzWf) (:text "|\"gemma-3-27b-it")
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
                              |b $ %{} :Leaf (:at 1734455197962) (:by |rJG4IHzWf) (:text |12)
                          |l $ %{} :Expr (:at 1722965112662) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723008930473) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1734455400397) (:by |rJG4IHzWf) (:text |12)
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
                          |v $ %{} :Expr (:at 1743789977674) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1743789993943) (:by |rJG4IHzWf) (:text |:transform-properties)
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
                              |b $ %{} :Leaf (:at 1744033277128) (:by |rJG4IHzWf) (:text "|\"max(160px,20vh)")
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
                      |T $ %{} :Leaf (:at 1743789904682) (:by |rJG4IHzWf) (:text "|\"&.focus-within")
                      |b $ %{} :Expr (:at 1722964850928) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1722964851279) (:by |rJG4IHzWf) (:text |{})
                          |l $ %{} :Expr (:at 1723010440562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1723010440562) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1744741882322) (:by |rJG4IHzWf) (:text "|\"max(240px,32vh)")
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
                  |f $ %{} :Leaf (:at 1728103096580) (:by |rJG4IHzWf) (:text |model)
                  |h $ %{} :Leaf (:at 1722410766404) (:by |rJG4IHzWf) (:text |d!)
              |l $ %{} :Expr (:at 1722409347984) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1722409349526) (:by |rJG4IHzWf) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1722409350436) (:by |rJG4IHzWf) (:text |async)
              |o $ %{} :Expr (:at 1730141959784) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1730141960636) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1730141962516) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1730141961875) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1730141961875) (:by |rJG4IHzWf) (:text |*text)
                          |b $ %{} :Expr (:at 1730141961875) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1730141961875) (:by |rJG4IHzWf) (:text |atom)
                              |b $ %{} :Leaf (:at 1730141968212) (:by |rJG4IHzWf) (:text "|\"")
                      |b $ %{} :Expr (:at 1744739427251) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1744739428752) (:by |rJG4IHzWf) (:text |model)
                          |b $ %{} :Expr (:at 1744739430913) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739430913) (:by |rJG4IHzWf) (:text |:model)
                              |b $ %{} :Leaf (:at 1744739430913) (:by |rJG4IHzWf) (:text |state)
                  |T $ %{} :Expr (:at 1730141200420) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1730141201098) (:by |rJG4IHzWf) (:text |try)
                      |T $ %{} :Expr (:at 1728103361255) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1729360703921) (:by |rJG4IHzWf) (:text |case-default)
                          |a $ %{} :Leaf (:at 1744739433196) (:by |rJG4IHzWf) (:text |model)
                          |d $ %{} :Expr (:at 1730141325307) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1730141326796) (:by |rJG4IHzWf) (:text |js-await)
                              |T $ %{} :Expr (:at 1729360694408) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1746206977434) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                  |X $ %{} :Leaf (:at 1744739435930) (:by |rJG4IHzWf) (:text |model)
                                  |b $ %{} :Leaf (:at 1729360694408) (:by |rJG4IHzWf) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1729360694408) (:by |rJG4IHzWf) (:text |state)
                                  |l $ %{} :Leaf (:at 1729360694408) (:by |rJG4IHzWf) (:text |prompt-text)
                                  |o $ %{} :Leaf (:at 1729360694408) (:by |rJG4IHzWf) (:text |d!)
                          |h $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1738811230301) (:by |rJG4IHzWf) (:text |:gemini-pro)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206976099) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739438563) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |hD $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1746206985273) (:by |rJG4IHzWf) (:text |:gemini-1.5-pro)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206976099) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739438563) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |hT $ %{} :Expr (:at 1744739385014) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744739388333) (:by |rJG4IHzWf) (:text |:imagin-3)
                              |b $ %{} :Expr (:at 1744739389621) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744739390777) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1744739391218) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744739398432) (:by |rJG4IHzWf) (:text |call-imagin-msg!)
                                      |b $ %{} :Leaf (:at 1744739441080) (:by |rJG4IHzWf) (:text |model)
                                      |h $ %{} :Leaf (:at 1744739420548) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1744739420548) (:by |rJG4IHzWf) (:text |state)
                                      |o $ %{} :Leaf (:at 1744739420548) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1744739420548) (:by |rJG4IHzWf) (:text |d!)
                          |i $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1735371194476) (:by |rJG4IHzWf) (:text |:gemini-thinking)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206973600) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739443230) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |iD $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1737566033517) (:by |rJG4IHzWf) (:text |:gemini-flash-thinking)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206971920) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739445332) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |iL $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1738811244382) (:by |rJG4IHzWf) (:text |:gemini-flash-lite)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206970182) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739447463) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |iP $ %{} :Expr (:at 1744996833684) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1744996839749) (:by |rJG4IHzWf) (:text |:gemini-flash)
                              |b $ %{} :Expr (:at 1744996841832) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1744996841832) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1744996843722) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |b $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |model)
                                      |h $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |state)
                                      |o $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1744996841832) (:by |rJG4IHzWf) (:text |d!)
                          |iT $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1735372002547) (:by |rJG4IHzWf) (:text |:gemini-learnlm)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1746206968523) (:by |rJG4IHzWf) (:text |call-genai-msg!)
                                      |X $ %{} :Leaf (:at 1744739451997) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |j $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1729517120516) (:by |rJG4IHzWf) (:text |:claude)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103381102) (:by |rJG4IHzWf) (:text |call-anthropic-msg!)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |n $ %{} :Leaf (:at 1740505295278) (:by |rJG4IHzWf) (:text "|\"claude-3-5-sonnet-20241022")
                                      |o $ %{} :Leaf (:at 1740505433867) (:by |rJG4IHzWf) (:text |false)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |k $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1740505039932) (:by |rJG4IHzWf) (:text |:claude-3.7)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103381102) (:by |rJG4IHzWf) (:text |call-anthropic-msg!)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |n $ %{} :Leaf (:at 1740505300325) (:by |rJG4IHzWf) (:text "|\"claude-3-7-sonnet-20250219")
                                      |o $ %{} :Leaf (:at 1740505436178) (:by |rJG4IHzWf) (:text |false)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |kT $ %{} :Expr (:at 1729360683058) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1740505050970) (:by |rJG4IHzWf) (:text |:claude-3.7-thinking)
                              |T $ %{} :Expr (:at 1730141328566) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141331118) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103381102) (:by |rJG4IHzWf) (:text |call-anthropic-msg!)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |n $ %{} :Leaf (:at 1740505301933) (:by |rJG4IHzWf) (:text "|\"claude-3-7-sonnet-20250219")
                                      |o $ %{} :Leaf (:at 1740505437884) (:by |rJG4IHzWf) (:text |true)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                          |l $ %{} :Expr (:at 1729360685834) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1729360984515) (:by |rJG4IHzWf) (:text |:deepinfra)
                              |T $ %{} :Expr (:at 1730141332240) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141333888) (:by |rJG4IHzWf) (:text |js-await)
                                  |T $ %{} :Expr (:at 1728103381694) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1729360718672) (:by |rJG4IHzWf) (:text |call-deepinfra-msg!)
                                      |b $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1728103384687) (:by |rJG4IHzWf) (:text |d!)
                                      |s $ %{} :Leaf (:at 1730141981583) (:by |rJG4IHzWf) (:text |*text)
                          |o $ %{} :Expr (:at 1745685102239) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745686169150) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-3.7-sonnet)
                              |b $ %{} :Expr (:at 1745685125117) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685126394) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1745685135930) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685228859) (:by |rJG4IHzWf) (:text |call-openrouter!)
                                      |h $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |state)
                                      |o $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1745686194381) (:by |rJG4IHzWf) (:text "|\"anthropic/claude-3.7-sonnet")
                                      |s $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |true)
                                      |t $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |d!)
                          |p $ %{} :Expr (:at 1745685102239) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745687404021) (:by |rJG4IHzWf) (:text |:openrouter/anthropic/claude-3.7-sonnet:thinking)
                              |b $ %{} :Expr (:at 1745685125117) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685126394) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1745685135930) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685228859) (:by |rJG4IHzWf) (:text |call-openrouter!)
                                      |h $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |cursor)
                                      |l $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |state)
                                      |o $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |q $ %{} :Leaf (:at 1745687406250) (:by |rJG4IHzWf) (:text "|\"anthropic/claude-3.7-sonnet:thinking")
                                      |s $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |true)
                                      |t $ %{} :Leaf (:at 1745685140141) (:by |rJG4IHzWf) (:text |d!)
                          |q $ %{} :Expr (:at 1745685166963) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745685174460) (:by |rJG4IHzWf) (:text |:openrouter/openai/gpt-4o)
                              |b $ %{} :Expr (:at 1745685193575) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1745685193575) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685230614) (:by |rJG4IHzWf) (:text |call-openrouter!)
                                      |b $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |o $ %{} :Leaf (:at 1745685205788) (:by |rJG4IHzWf) (:text "|\"openai/gpt-4o")
                                      |q $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |true)
                                      |s $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |d!)
                          |s $ %{} :Expr (:at 1745685166963) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1745687737112) (:by |rJG4IHzWf) (:text |:openrouter/deepseek/deepseek-chat-v3-0324:free)
                              |b $ %{} :Expr (:at 1745685193575) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |js-await)
                                  |b $ %{} :Expr (:at 1745685193575) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1745685230614) (:by |rJG4IHzWf) (:text |call-openrouter!)
                                      |b $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |state)
                                      |l $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |prompt-text)
                                      |o $ %{} :Leaf (:at 1745687738969) (:by |rJG4IHzWf) (:text "|\"deepseek/deepseek-chat-v3-0324:free")
                                      |q $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |true)
                                      |s $ %{} :Leaf (:at 1745685193575) (:by |rJG4IHzWf) (:text |d!)
                      |b $ %{} :Expr (:at 1730141201947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1730141203451) (:by |rJG4IHzWf) (:text |fn)
                          |b $ %{} :Expr (:at 1730141203753) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1730141203960) (:by |rJG4IHzWf) (:text |e)
                          |h $ %{} :Expr (:at 1730141206063) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1730141208637) (:by |rJG4IHzWf) (:text |d!)
                              |b $ %{} :Leaf (:at 1730141213411) (:by |rJG4IHzWf) (:text |cursor)
                              |h $ %{} :Expr (:at 1730141215677) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1730141242461) (:by |rJG4IHzWf) (:text |->)
                                  |T $ %{} :Leaf (:at 1730141215431) (:by |rJG4IHzWf) (:text |state)
                                  |b $ %{} :Expr (:at 1730141244222) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1730141247585) (:by |rJG4IHzWf) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1730141244222) (:by |rJG4IHzWf) (:text |:answer)
                                      |b $ %{} :Expr (:at 1730142014461) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1730142015252) (:by |rJG4IHzWf) (:text |str)
                                          |L $ %{} :Leaf (:at 1730142021720) (:by |rJG4IHzWf) (:text |@*text)
                                          |P $ %{} :Leaf (:at 1730142026591) (:by |rJG4IHzWf) (:text |&newline)
                                          |R $ %{} :Leaf (:at 1730142027811) (:by |rJG4IHzWf) (:text |&newline)
                                          |T $ %{} :Expr (:at 1730141267694) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1730141269563) (:by |rJG4IHzWf) (:text |str)
                                              |b $ %{} :Leaf (:at 1730141275511) (:by |rJG4IHzWf) (:text "|\"Failed to load: ")
                                              |h $ %{} :Leaf (:at 1730141276788) (:by |rJG4IHzWf) (:text |e)
                                  |h $ %{} :Expr (:at 1730141259463) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1730141282877) (:by |rJG4IHzWf) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1730141259463) (:by |rJG4IHzWf) (:text |:loading?)
                                      |b $ %{} :Leaf (:at 1730141259463) (:by |rJG4IHzWf) (:text |false)
                                  |l $ %{} :Expr (:at 1730141261798) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1730141284578) (:by |rJG4IHzWf) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1730141263700) (:by |rJG4IHzWf) (:text |:done?)
                                      |b $ %{} :Leaf (:at 1730141264291) (:by |rJG4IHzWf) (:text |true)
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
                        |z $ %{} :Leaf (:at 1728102563048) (:by |rJG4IHzWf) (:text |a)
                        |zD $ %{} :Leaf (:at 1743618349756) (:by |rJG4IHzWf) (:text |pre)
                        |zP $ %{} :Leaf (:at 1744741281287) (:by |rJG4IHzWf) (:text |img)
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
                        |n $ %{} :Leaf (:at 1723603608554) (:by |rJG4IHzWf) (:text |chrome-extension?)
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
                |zb $ %{} :Expr (:at 1729360388958) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1729360401903) (:by |rJG4IHzWf) (:text |respo-alerts.core)
                    |b $ %{} :Leaf (:at 1729360403260) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1729360403890) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1729360403613) (:by |rJG4IHzWf) (:text |use-modal-menu)
                |ze $ %{} :Expr (:at 1723104975584) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1723104991690) (:by |rJG4IHzWf) (:text "|\"../extension/get-selected")
                    |b $ %{} :Leaf (:at 1723104992655) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1723104992888) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1723105000472) (:by |rJG4IHzWf) (:text |get-selected)
                |zj $ %{} :Expr (:at 1739122267726) (:by |rJG4IHzWf)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1746206998486) (:by |rJG4IHzWf) (:text |;)
                    |T $ %{} :Leaf (:at 1739122268627) (:by |rJG4IHzWf) (:text "|\"@google/generative-ai")
                    |b $ %{} :Leaf (:at 1739122270617) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1739122274807) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1739122275363) (:by |rJG4IHzWf) (:text |GoogleGenerativeAI)
                |zn $ %{} :Expr (:at 1743789279617) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1743789289349) (:by |rJG4IHzWf) (:text |memof.once)
                    |b $ %{} :Leaf (:at 1743789290043) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1743789290349) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1743789318472) (:by |rJG4IHzWf) (:text |memof1-call)
                        |b $ %{} :Leaf (:at 1743791566514) (:by |rJG4IHzWf) (:text |memof1-call-by)
                |zq $ %{} :Expr (:at 1744739495253) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1744739502073) (:by |rJG4IHzWf) (:text "|\"@google/genai")
                    |b $ %{} :Leaf (:at 1744739503331) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1744739503585) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1744739506336) (:by |rJG4IHzWf) (:text |GoogleGenAI)
                        |b $ %{} :Leaf (:at 1744740171208) (:by |rJG4IHzWf) (:text |Modality)
                |zs $ %{} :Expr (:at 1744740964749) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1744740968417) (:by |rJG4IHzWf) (:text "|\"../lib/image")
                    |b $ %{} :Leaf (:at 1744740969276) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1744740969523) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1744741006867) (:by |rJG4IHzWf) (:text |base64ToBlob)
                |zt $ %{} :Expr (:at 1745685299381) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1745685301046) (:by |rJG4IHzWf) (:text "|\"openai")
                    |b $ %{} :Leaf (:at 1745685309289) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1745685311158) (:by |rJG4IHzWf) (:text |OpenAI)
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
                                  |n $ %{} :Expr (:at 1728103139262) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1728103140027) (:by |rJG4IHzWf) (:text |model)
                                      |b $ %{} :Expr (:at 1728103140356) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1728103141485) (:by |rJG4IHzWf) (:text |either)
                                          |X $ %{} :Expr (:at 1728103146763) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1728103148364) (:by |rJG4IHzWf) (:text |:model)
                                              |b $ %{} :Leaf (:at 1728103149064) (:by |rJG4IHzWf) (:text |store)
                                          |b $ %{} :Leaf (:at 1728103146019) (:by |rJG4IHzWf) (:text |:gemini)
                              |h $ %{} :Expr (:at 1723173517113) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1723173517113) (:by |rJG4IHzWf) (:text |submit-message!)
                                  |b $ %{} :Leaf (:at 1723173517113) (:by |rJG4IHzWf) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1723173518932) (:by |rJG4IHzWf) (:text |state0)
                                  |l $ %{} :Leaf (:at 1723173521472) (:by |rJG4IHzWf) (:text |content)
                                  |m $ %{} :Leaf (:at 1728103137806) (:by |rJG4IHzWf) (:text |model)
                                  |o $ %{} :Leaf (:at 1723173632238) (:by |rJG4IHzWf) (:text |dispatch!)
              |o $ %{} :Expr (:at 1723521090613) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1723521097047) (:by |rJG4IHzWf) (:text |js/chrome.runtime.connect)
                  |b $ %{} :Expr (:at 1723521097651) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1723521101462) (:by |rJG4IHzWf) (:text |js-object)
                      |b $ %{} :Expr (:at 1723521102038) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1723521102663) (:by |rJG4IHzWf) (:text |:name)
                          |b $ %{} :Leaf (:at 1723521106610) (:by |rJG4IHzWf) (:text ||mySidepanel)
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
                  |T $ %{} :Leaf (:at 1723521086239) (:by |rJG4IHzWf) (:text |if)
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
                  |n $ %{} :Expr (:at 1728102732339) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1728102733950) (:by |rJG4IHzWf) (:text |:model)
                      |b $ %{} :Leaf (:at 1728102741093) (:by |rJG4IHzWf) (:text |nil)
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
