; extends

(
    [
        ;(comment)
        (((comment) @c)
        (#any-match? @c "#cgo")
        (#offset! @c 1 0 1 -1))
    ] @injection.content
    (
        ;((comment) @c)
        ;(#any-match? @c "#cgo")
        ;(#offset! @c 0 1 0 -1)
        (#set! injection.language "c")
    )
 )
