(:*******************************************************:)
(:Test: mindec2args-2                                     :)
(:Written By: Carmelo Montanez                            :)
(:Date: Fri Dec 10 10:15:47 GMT-05:00 2004                :)
(:Purpose: Evaluates The "min" function                  :)
(: with the arguments set as follows:                    :)
(:$arg1 = xs:decimal(mid range)                          :)
(:$arg2 = xs:decimal(lower bound)                        :)
(:*******************************************************:)

fn:min((xs:decimal("617375191608514839"),xs:decimal("-999999999999999999")))