(:*******************************************************:)
(: Test: K-NodeLocalNameFunc-2                           :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `if(false()) then local-name() else true()`. :)
(:*******************************************************:)
if(false()) then local-name() else true()