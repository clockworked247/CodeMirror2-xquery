(:*******************************************************:)
(: Test: K2-FilterExpr-4                                 :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: An numeric predicate that is xs:decimal, as part of a path expression. :)
(:*******************************************************:)
empty(<e><a/></e>//a[3.4])