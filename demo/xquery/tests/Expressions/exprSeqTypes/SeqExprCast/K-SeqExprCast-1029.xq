(:*******************************************************:)
(: Test: K-SeqExprCast-1029                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:gYear as source type and xs:time as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:gYear("1999") castable as xs:time)