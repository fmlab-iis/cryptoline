(lang dune 2.0)

; Before changing the dune version, make sure that the new version
; is supported by most popular operating systems, for example
; Ubuntu 22.04 LTS.

(name cryptoline)

(generate_opam_files true)
(license MIT)
(authors "fmlab-iis")
(maintainers "fmlab-iis")

(package
  (name cryptoline)
  (synopsis "CryptoLine Verifier")
  (depends
  lwt
  lwt_ppx
  num
  zarith))
