(:*******************************************************:)
(: Test: K-SeqExprCast-385                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Testing timezone field in xs:date: the hour component cannot be +15. :)
(:*******************************************************:)
xs:date("1999-12-01+15:00")