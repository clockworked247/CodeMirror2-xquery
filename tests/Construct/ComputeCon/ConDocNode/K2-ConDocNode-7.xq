(:*******************************************************:)
(: Test: K2-ConDocNode-7                                 :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: A document constructor can't receive attribute nodes(#5). :)
(:*******************************************************:)
string(document{<e/>, attribute name {"content"}, "some text"})