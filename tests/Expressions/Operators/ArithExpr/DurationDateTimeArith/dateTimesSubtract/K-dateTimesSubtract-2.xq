(:*******************************************************:)
(: Test: K-dateTimesSubtract-2                           :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: The '+' operator is not available between xs:dateTime and xs:dateTime. :)
(:*******************************************************:)
xs:dateTime("1999-10-12T08:01:23") + xs:dateTime("1999-10-12T08:01:23")