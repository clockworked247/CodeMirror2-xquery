(:*******************************************************:)
(: Test: K2-SeqExprCast-284                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Cast xs:float(-INF) to xs:short.             :)
(:*******************************************************:)
xs:short(xs:float("-INF"))