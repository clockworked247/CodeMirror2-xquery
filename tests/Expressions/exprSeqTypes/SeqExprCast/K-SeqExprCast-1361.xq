(:*******************************************************:)
(: Test: K-SeqExprCast-1361                              :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: 'castable as' involving xs:hexBinary as source type and xs:anyURI as target type should always evaluate to false. :)
(:*******************************************************:)
not(xs:hexBinary("0FB7") castable as xs:anyURI)