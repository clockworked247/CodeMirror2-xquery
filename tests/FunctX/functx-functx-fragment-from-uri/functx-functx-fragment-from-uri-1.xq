(:**************************************************************:)
(: Test: functx-functx-fragment-from-uri-1                                  :)
(: Written by: Priscilla Walmsley (Frans Englich is maintainer) :)
(: Date: 2008-05-16+02:00                                       :)
(:**************************************************************:)

declare namespace functx = "http://www.example.com/";
(:~
 : Returns the fragment from a URI 
 :
 : @author  Priscilla Walmsley, Datypic 
 : @version 1.0 
 : @see     http://www.xqueryfunctions.com/xq/functx_fragment-from-uri.html 
 : @param   $uri the URI 
 :) 
declare function functx:fragment-from-uri 
  ( $uri as xs:string? )  as xs:string? {
       
   substring-after($uri,'#')
 } ;
(functx:fragment-from-uri(
     'http://datypic.com/index.htm#abc'))
