(:*******************************************************:)
(: Test: K2-SeqDocFunc-4                                 :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:21+01:00                       :)
(: Purpose: Invoke fn:doc with a relative, Unix-like URI. Since it's relative, and the base-uri may be undefined, XPST0001 is allowed. :)
(:*******************************************************:)
doc("/example.com/example.org/does/not/exist/doesNotExist/works-mod.xml")