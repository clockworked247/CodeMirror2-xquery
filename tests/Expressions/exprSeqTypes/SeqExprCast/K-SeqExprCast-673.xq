(:*******************************************************:)
(: Test: K-SeqExprCast-673                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:duration as source type and xs:gMonthDay as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:duration("P1Y2M3DT10H30M") castable as xs:gMonthDay)