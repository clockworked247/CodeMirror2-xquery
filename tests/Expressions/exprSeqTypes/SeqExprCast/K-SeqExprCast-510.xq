(:*******************************************************:)
(: Test: K-SeqExprCast-510                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Casting from xs:double to xs:date isn't allowed. :)
(:*******************************************************:)
xs:double("3.3e3") cast as xs:date