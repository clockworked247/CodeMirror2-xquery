(:*******************************************************:)
(: Test: K2-QuantExprWithout-5                           :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Use the focus from within a some-expression. :)
(:*******************************************************:)
<e/>/(some $v in self::node() satisfies $v)