(:*******************************************************:)
(: Test: K-gMonthDayEQ-5                                 :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Test that zone offset -00:00 is equal to Z, in xs:gMonthDay. :)
(:*******************************************************:)
xs:gMonthDay("--03-01-00:00") eq xs:gMonthDay("--03-01Z")