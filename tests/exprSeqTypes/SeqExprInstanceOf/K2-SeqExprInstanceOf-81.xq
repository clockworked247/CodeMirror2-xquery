(:*******************************************************:)
(: Test: K2-SeqExprInstanceOf-81                         :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Ensure that a cast to xs:unsignedLong is of the right type, when casting from xs:double. :)
(:*******************************************************:)
xs:unsignedLong(xs:double("4")) instance of xs:unsignedLong