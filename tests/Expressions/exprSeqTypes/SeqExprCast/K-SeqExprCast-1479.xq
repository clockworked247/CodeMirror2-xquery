(:*******************************************************:)
(: Test: K-SeqExprCast-1479                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: No constructor function exists for xs:NOTATION. :)
(:*******************************************************:)
not(xs:NOTATION("prefix:local") castable as xs:time)