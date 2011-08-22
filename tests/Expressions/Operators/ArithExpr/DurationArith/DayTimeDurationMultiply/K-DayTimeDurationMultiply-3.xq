(:*******************************************************:)
(: Test: K-DayTimeDurationMultiply-3                     :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Simple test of multiplying a xs:dayTimeDuration with 0. :)
(:*******************************************************:)
xs:dayTimeDuration("P3DT4H3M3.100S") * 0
	                eq xs:dayTimeDuration("PT0S")