(:*******************************************************:)
(: Test: K-SeqExprCast-1145                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:gDay as source type and xs:gMonth as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:gDay("---03") castable as xs:gMonth)