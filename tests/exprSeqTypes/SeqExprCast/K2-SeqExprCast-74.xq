(:*******************************************************:)
(: Test: K2-SeqExprCast-74                               :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Multiple minus signs is disallowed in nonPositiveInteger(#2). :)
(:*******************************************************:)
xs:nonPositiveInteger("--1")