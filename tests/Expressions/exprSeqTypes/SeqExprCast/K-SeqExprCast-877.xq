(:*******************************************************:)
(: Test: K-SeqExprCast-877                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:time as source type and xs:gYearMonth as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:time("03:20:00-05:00") castable as xs:gYearMonth)