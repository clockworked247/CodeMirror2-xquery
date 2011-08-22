(:*******************************************************:)
(:Test: op-numeric-greater-thanint2args-3                 :)
(:Written By: Carmelo Montanez                            :)
(:Date: Thu Dec 16 10:48:16 GMT-05:00 2004                :)
(:Purpose: Evaluates The "op:numeric-greater-than" operator:)
(: with the arguments set as follows:                    :)
(:$arg1 = xs:int(upper bound)                            :)
(:$arg2 = xs:int(lower bound)                            :)
(:*******************************************************:)

xs:int("2147483647") gt xs:int("-2147483648")