(:*******************************************************:)
(: Test: K-SeqExprCast-49                                :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: A test whose essence is: `"untyped a " cast as xs:untypedAtomic eq xs:untypedAtomic("untyped a ")`. :)
(:*******************************************************:)
"untyped a   " cast as xs:untypedAtomic 
		eq xs:untypedAtomic("untyped a   ")