(:*******************************************************:)
(:Test: sumusht3args-3                                    :)
(:Written By: Carmelo Montanez                            :)
(:Date: Fri Dec 10 10:15:47 GMT-05:00 2004                :)
(:Purpose: Evaluates The "sum" function                  :)
(: with the arguments set as follows:                    :)
(:$arg1 = xs:unsignedShort(upper bound)                  :)
(:$arg2 = xs:unsignedShort(lower bound)                  :)
(:$zero = xs:unsignedShort(lower bound)                  :)
(:*******************************************************:)

fn:sum((xs:unsignedShort("65535"),xs:unsignedShort("0"),xs:unsignedShort("0")))