(:*******************************************************:)
(: Test: K-ContextPositionFunc-29                        :)
(: Written by: Frans Englich                             :)
(: Date: 2007-11-22T11:31:23+01:00                       :)
(: Purpose: position() combined with a comparison operator inside a predicate. :)
(:*******************************************************:)
deep-equal((1, 2, 3), (1, 2, 3, current-time())[position() < 4])