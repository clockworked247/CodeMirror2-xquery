(:*******************************************************:)
(: Test: K-DayTimeDurationEQ-2                           :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Testing 'eq' involving xs:dayTimeDuration with two zeroed values. :)
(:*******************************************************:)
xs:dayTimeDuration("PT0S") eq xs:dayTimeDuration("PT0S")