(:*******************************************************:)
(: Test: K-QuantExprWith-21                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Every-quantification with type-declaration. An implementation supporting the static typing feature may raise XPTY0004. :)
(:*******************************************************:)
every $a as empty-sequence() in (), $b as xs:integer in $a satisfies $b