(:*******************************************************:)
(: Test: K-SeqExprCast-911                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:date as source type and xs:double as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:date("2004-10-13") castable as xs:double)