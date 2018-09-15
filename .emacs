(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(compilation-scroll-output (quote first-error))
 '(conda-anaconda-home "/home/stilley2/anaconda3/")
 '(custom-enabled-themes (quote (manoj-dark)))
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(org-agenda-files (quote ("~/thesis/notes.org")))
 '(package-selected-packages
   (quote
    (cuda-mode conda org-ref evil-org evil auctex ein elpy)))
 '(python-flymake-command (quote ("flake8")))
 '(savehist-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indentation-face ((t nil))))
(require 'conda)
(conda-env-initialize-interactive-shells)

(require 'evil)
(evil-mode 1)
(evil-set-initial-state 'shell-mode 'emacs)
;;(require 'evil-org)
;;(evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading))
(require 'org-ref)
(setq reftex-default-bibliography '("~/ZoteroLibrarybibtex.bib"))
(setq org-ref-default-bibliography '("~/ZoteroLibrarybibtex.bib")
      org-ref-bibliography-notes '("~/bibnotes.org")
)
(set-face-attribute 'default nil :height 130)
(setq tramp-ssh-controlmaster-options
      (concat
	"-o ControlPath=~/.ssh/control:%%h:%%p:%%r "
	"-o ControlMaster=auto -o ControlPersist=yes"))

(elpy-enable)
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
	     "jupyter")
;; https://emacs.stackexchange.com/questions/22241/show-only-file-names-starting-with-the-given-string-in-emacs-history
;; http://ergoemacs.org/emacs/reclaim_keybindings.html
(define-key minibuffer-local-completion-map (kbd "M-p") 'previous-complete-history-element)
(define-key minibuffer-local-completion-map (kbd "M-n") 'next-complete-history-element)
