(lang dune 2.0)
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
