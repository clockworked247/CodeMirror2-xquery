(:*******************************************************:)
(: Test: K2-ExternalVariablesWithout-6                   :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: An implementation may raise XPDY0002 on a declared external variable, although not necessary since it isn't used. :)
(:*******************************************************:)
declare variable $exampleComThisVarIsNotRecognized external;
1