(:*******************************************************:)
(: Test: K-SeqMAXFunc-55                                 :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:23+01:00                       :)
(: Purpose: Testing max() with current-date().           :)
(:*******************************************************:)
max((current-date(), xs:date("1999-01-01"))) eq current-date()