(:*******************************************************:)
(: Test: K2-DirectConElemWhitespace-13                   :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Ensure extracting the string value from mixed content involving comments is properly done. :)
(:*******************************************************:)
string(<e>123<!-- a comment -->ab<!-- another comment -->c</e>)