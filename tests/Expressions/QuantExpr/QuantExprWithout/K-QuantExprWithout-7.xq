(:*******************************************************:)
(: Test: K-QuantExprWithout-7                            :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: some-quantification combined with fn:boolean(). :)
(:*******************************************************:)
some $i in subsequence((0, 1, 2, current-time()), 1, 3)
satisfies boolean($i treat as xs:integer)