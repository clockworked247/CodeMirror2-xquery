(:**************************************************************:)
(: Test: functx-functx-total-seconds-from-duration-1                                  :)
(: Written by: Priscilla Walmsley (Frans Englich is maintainer) :)
(: Date: 2008-05-16+02:00                                       :)
(:**************************************************************:)

declare namespace functx = "http://www.example.com/";
(:~
 : The total number of seconds in a dayTimeDuration 
 :
 : @author  Priscilla Walmsley, Datypic 
 : @version 1.0 
 : @see     http://www.xqueryfunctions.com/xq/functx_total-seconds-from-duration.html 
 : @param   $duration the duration 
 :) 
declare function functx:total-seconds-from-duration 
  ( $duration as xs:dayTimeDuration? )  as xs:decimal? {
       
   $duration div xs:dayTimeDuration('PT1S')
 } ;
(functx:total-seconds-from-duration(
     xs:dayTimeDuration('PT90S')))
