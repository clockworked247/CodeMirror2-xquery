(:*******************************************************:)
(: Test: K-LogicExpr-24                                  :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: An or-test applied on fn:count().            :)
(:*******************************************************:)
count((1, 2, 3, timezone-from-time(current-time()), 4)) or count((1, 2, 3, timezone-from-time(current-time()), 4))