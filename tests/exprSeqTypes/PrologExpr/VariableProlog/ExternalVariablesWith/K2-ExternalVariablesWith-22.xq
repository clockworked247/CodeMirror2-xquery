(:*******************************************************:)
(: Test: K2-ExternalVariablesWith-22                     :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: A complex type declaration.                  :)
(:*******************************************************:)
declare variable $v as element(*, xs:untyped?)+ := <e/>;
1