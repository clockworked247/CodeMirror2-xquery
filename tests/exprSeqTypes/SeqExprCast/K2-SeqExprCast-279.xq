(:*******************************************************:)
(: Test: K2-SeqExprCast-279                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Cast xs:double(-INF) to xs:int.              :)
(:*******************************************************:)
xs:int(xs:double("-INF"))