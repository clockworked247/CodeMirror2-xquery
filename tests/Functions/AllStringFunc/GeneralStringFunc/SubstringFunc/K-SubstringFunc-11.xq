(:*******************************************************:)
(: Test: K-SubstringFunc-11                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: A test whose essence is: `substring("12345", 1, 0 div 0E0) eq ""`. :)
(:*******************************************************:)
substring("12345", 1, 0 div 0E0) eq ""