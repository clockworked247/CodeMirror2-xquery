(:*******************************************************:)
(: Test: K-SeqExprCast-623                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:integer as source type and xs:gDay as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:integer("6789") castable as xs:gDay)