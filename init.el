(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; ========= OCaml path ==========
(setq home-path (getenv "HOME"))
(setq opam-bin-path (concat home-path "/.opam/default/bin"))
(setenv "PATH" (concat (getenv "PATH") (concat ":" opam-bin-path ":/usr/local/bin")))
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path opam-bin-path)

