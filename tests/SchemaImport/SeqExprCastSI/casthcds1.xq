(: Name: casthcds1 :)
(: Description: Simple test for evaluation of a simple expression casted as xs:integer - XML Data Source :)
(: insert-start :)
import schema namespace atomic="http://www.w3.org/XQueryTest";
declare variable $input-context1 external;
(: insert-end :)


($input-context1/atomic:root/atomic:integer) cast as xs:integer
