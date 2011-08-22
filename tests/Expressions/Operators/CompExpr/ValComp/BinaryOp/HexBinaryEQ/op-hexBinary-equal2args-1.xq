(:*******************************************************:)
(:Test: op-hexBinary-equal2args-1                         :)
(:Written By: Carmelo Montanez                            :)
(:Date: Thu Dec 16 10:48:18 GMT-05:00 2004                :)
(:Purpose: Evaluates The "op:hexBinary-equal" operator   :)
(: with the arguments set as follows:                    :)
(:$value1 = xs:hexBinary(lower bound)                    :)
(:$value2 = xs:hexBinary(lower bound)                    :)
(:*******************************************************:)

xs:hexBinary("767479716c6a647663") eq xs:hexBinary("767479716c6a647663")