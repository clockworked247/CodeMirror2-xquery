(:*******************************************************:)
(: Test: K2-SeqExprCast-283                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Cast xs:double(NaN) to xs:int.               :)
(:*******************************************************:)
xs:int(xs:double("NaN"))