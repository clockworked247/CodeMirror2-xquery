(:*******************************************************:)
(:Test: op-time-greater-than2args-4                       :)
(:Written By: Carmelo Montanez                            :)
(:Date: Tue Apr 12 16:29:07 GMT-05:00 2005                :)
(:Purpose: Evaluates The "op:time-greater-than" operator :)
(: with the arguments set as follows:                    :)
(:$arg1 = xs:time(lower bound)                           :)
(:$arg2 = xs:time(mid range)                             :)
(:*******************************************************:)

xs:time("00:00:00Z") gt xs:time("08:03:35Z")