(:*******************************************************:)
(: Test: K2-DirectConElemContent-12                      :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Test that the typed value of comment nodes is correct. :)
(:*******************************************************:)
not(<!-- a comment --> instance of xs:untypedAtomic)