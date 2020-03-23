;; http://ergoemacs.org/emacs/elisp_syntax_coloring.html

(setq cryptoline-font-lock-keywords
      (let* (
             ;; define several category of keywords
             ;; (x-types '("uint64" "uint128"))
             (x-constants '("true" "main"))
             ;; (x-events '("at_rot_target" "at_target" "attach"))
             (x-keywords '("proc" "call" "ulimbs" "slimbs" "limbs"
                           "prove" "with" "all" "cuts" "assumes" "ghosts" "precondition"
                           "assert" "assume"
                           "const"
                           "eq" "eqmod"
                           "vars" "neg" "sq" "ext" "uext" "sext"
                           "mod" "umod" "srem" "smod"
                           "xor" "ult" "ule" "ugt" "uge"
                           "slt" "sle" "sgt" "sge"
                           "cut" "ecut" "rcut"
                           "ghost" "nop"
                           ))
             (x-operators '(
                            "@"
                            "+"
                            "**"
                            "*"
                            "^"
                            "<=u"
                            ">=u"
                            "<u"
                            ">u"
                            "<=s"
                            ">=s"
                            "<s"
                            ">s"
                            "<="
                            ">="
                            "<"
                            ">"
                            "="
                            "$"
                            "/\\"
                            "\\/"
                            "!"
                            "&"
                            "&&"
                            "|"
                            ))
             (x-functions '(
                            "mov" "assign"
                            "add" "uadd" "sadd"
                            "adds" "uadds" "sadds"
                            "addr" "uaddr" "saddr"
                            "adc" "uadc" "sadc"
                            "adcs" "uadcs" "sadcs"
                            "adcr" "uadcr" "sadcr"
                            "sub" "usub" "ssub"
                            "subs" "usubs" "ssubs"
                            "subc" "usubc" "ssubc"
                            "subb" "usubb" "ssubb"
                            "subr" "usubr" "ssubr"
                            "sbc" "usbc" "ssbc"
                            "sbcs" "usbcs" "ssbcs"
                            "sbcr" "usbcr" "ssbcr"
                            "sbb" "usbb" "ssbb"
                            "sbbs" "usbbs" "ssbbs"
                            "sbbr" "usbbr" "ssbbr"
                            "mul" "umul" "smul"
                            "muls" "umuls" "smuls"
                            "mulr" "umulr" "smulr"
                            "mull" "umull" "smull"
                            "mulj" "umulj" "smulj"
                            "spl" "uspl" "sspl"
                            "split" "usplit" "ssplit"
                            "shl" "lsl"
                            "cshl" "clsl"
                            "set"
                            "clear"
                            "nondet"
                            "cmove" "cmov"
                            "and" "or" "not"
                            "cast" "vpc"
                            "join"
                            ))

             ;; generate regex string for each category of keywords
             (x-keywords-regexp (regexp-opt x-keywords 'words))
             ;; (x-types-regexp (regexp-opt x-types 'words))
             (x-constants-regexp (regexp-opt x-constants 'words))
             ;; (x-events-regexp (regexp-opt x-events 'words))
             (x-operators-regexp (regexp-opt x-operators))
             (x-functions-regexp (regexp-opt x-functions 'words)))

        `(
          ;; (,x-types-regexp . font-lock-type-face)
          (,"\\<\\(\\(uint\\|int\\|sint\\)[0-9]+\\|bit\\)\\>" . font-lock-type-face)
          (,x-constants-regexp . font-lock-constant-face)
          ;; (,x-events-regexp . font-lock-builtin-face)
          (,x-functions-regexp . font-lock-function-name-face)
          (,x-keywords-regexp . font-lock-keyword-face)
          (,x-operators-regexp . font-lock-builtin-face)
          ;; note: order above matters, because once colored, that part won't change.
          ;; in general, put longer words first
          )))

(defvar cryptoline-mode-syntax-table nil "Syntax table for `cryptoline-mode'.")

(setq cryptoline-mode-syntax-table
      (let ( (synTable (make-syntax-table)))
        ;; comment style “/* … */ and (* *)”
        (modify-syntax-entry ?\/ ". 14" synTable)
        (modify-syntax-entry ?\( ". 1c" synTable)
        (modify-syntax-entry ?\) ". 4c" synTable)
        (modify-syntax-entry ?* ". 23" synTable)
        (modify-syntax-entry ?# "<" synTable)
        (modify-syntax-entry ?\n ">" synTable)
        synTable))


;;;###autoload
(define-derived-mode cryptoline-mode prog-mode "Cryptoline"
  "Major mode for editing Cryptoline"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((cryptoline-font-lock-keywords)))
  (setq-local comment-start "/*")
  (setq-local comment-end "*/")
  )

;; add the mode to the `features' list
(provide 'cryptoline-mode)
