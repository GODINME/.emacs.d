(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(proof-general which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 ;; Automatic generated info 


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'proof-general)
  (package-refresh-contents)
  (package-install 'proof-general))


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :init (which-key-mode))



(setq proof-electric-terminator-enable nil
      proof-next-command-insert-space nil
      proof-next-command-on-new-line nil
      coq-one-command-per-line nil
      coq-symbol-highlight-enable t
      coq-compile-before-require t
      proof-full-annotation t
      proof-script-fly-past-comments t
      proof-splash-enable nil
      proof-mode-abbrev-table '()
      coq-mode-abbrev-table '()
      proof-three-window-mode-policy 'hybrid)
(require 'proof-general)
(add-hook 'proof-mode-hook
          (lambda ()
            (define-key proof-mode-map (kbd "C-z") 'pg-protected-undo)))

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(global-set-key (kbd "C-z") 'undo)

(auto-revert-mode 1)
(delete-selection-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-strtup-message t)
(setq auto-save-default nil)
(setq delete-auto-save-files t)



;; ========= OCaml path ==========
(setq home-path (getenv "HOME"))
(setq opam-bin-path (concat home-path "/.opam/default/bin"))
(setenv "PATH" (concat (getenv "PATH") (concat ":" opam-bin-path ":/usr/local/bin")))
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path opam-bin-path)

