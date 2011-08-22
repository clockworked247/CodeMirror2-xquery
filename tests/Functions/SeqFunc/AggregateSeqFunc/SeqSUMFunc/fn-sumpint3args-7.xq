(:*******************************************************:)
(:Test: sumpint3args-7                                    :)
(:Written By: Carmelo Montanez                            :)
(:Date: Fri Dec 10 10:15:47 GMT-05:00 2004                :)
(:Purpose: Evaluates The "sum" function                  :)
(: with the arguments set as follows:                    :)
(:$arg1 = xs:positiveInteger(lower bound)                :)
(:$arg2 = xs:positiveInteger(lower bound)                :)
(:$zero = xs:positiveInteger(upper bound)                :)
(:*******************************************************:)

fn:sum((xs:positiveInteger("1"),xs:positiveInteger("1"),xs:positiveInteger("999999999999999998")))