(:*******************************************************:)
(: Test: K2-SeqExprCast-386                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Cast xs:nonPositiveInteger to xs:untypedAtomic. :)
(:*******************************************************:)
xs:untypedAtomic(xs:nonPositiveInteger(0))