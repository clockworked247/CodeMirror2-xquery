(:*******************************************************:)
(: Test: K-DefaultNamespaceProlog-5                      :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:22+01:00                       :)
(: Purpose: No function named boolean is available in the namespace 'example.com' set via 'declare default function namespace'. :)
(:*******************************************************:)
(::)declare(::)default(::)function(::)namespace(::)"http://example.com/"(::);(::)boolean(1)