(:*******************************************************:)
(: Test: K-NumericLT-21                                  :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: le combined with count().                    :)
(:*******************************************************:)
1 le count((1, 2, 3, timezone-from-time(current-time()), 4))