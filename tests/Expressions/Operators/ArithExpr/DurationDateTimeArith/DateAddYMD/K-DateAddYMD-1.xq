(:*******************************************************:)
(: Test: K-DateAddYMD-1                                  :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Simple testing involving operator '+' between xs:date and xs:yearMonthDuration. :)
(:*******************************************************:)
xs:date("1999-08-12") + xs:yearMonthDuration("P3Y7M")
		                eq xs:date("2003-03-12")