(:*******************************************************:)
(: Test: K2-SeqDeepEqualFunc-32                          :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Test deep-equalness of two attribute nodes that has identical text content but different names. :)
(:*******************************************************:)
deep-equal(attribute name {"content  "}, attribute name2 {"content  "})