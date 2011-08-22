(:*******************************************************:)
(: Test: K-DateTimeFunc-9                                :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: Invoke fn:dateTime() with identical timezones. :)
(:*******************************************************:)
dateTime(xs:date("2004-03-04+11:00"),
						    xs:time("08:05:23+11:00"))
				   eq
				   xs:dateTime("2004-03-04T08:05:23+11:00")