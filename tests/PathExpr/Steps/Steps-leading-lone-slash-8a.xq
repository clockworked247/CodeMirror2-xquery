(:*******************************************************:)
(: Test: Steps-leading-lone-slash-8a                     :)
(: Written by: Jim Melton                                :)
(: Date: 2009-10-01T14:00:00-07:00                       :)
(: Purpose: Verify xgc:leading-lone-slash implementation :)
(:   This expression is a valid expression               :)
(:      (/) instance of document-node(element(x))        :)
(:*******************************************************:)
declare variable $var := document {<a>123</a>};
$var[(/) instance of document-node(element(x))]