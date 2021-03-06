;;;;
;;;; GNU Emacs initialization file
;;;;


;;;  System-type definition:  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun system-is-linux()
  (string-equal system-type "gnu/linux"))

(defun system-is-windows()
  (string-equal system-type "windows-nt"))


;;;  Configuration files:  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))


(require 'packages)
(require 'extensions)
(require 'locales)
(require 'keybinding)
(require 'common-lisp-language)
(require 'python-language)
(require 'web-dev)
(require 'aliases)
(require 'irc)


;;;  Theme selection:  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(cond ((display-graphic-p)
       (require 'theme-gui))
      ((require 'theme-tty)))


;;;  Autogeneration config strings:  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; TODO: Create a base theme and disband this block:
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#18181B" :foreground "DarkSeaGreen2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "xos4" :family "xos4 Terminus"))))
 '(column-number-mode t)
 '(cursor ((t (:background "papaya whip"))))
 '(custom-group-tag ((t (:foreground "sandy brown" :weight bold :height 1.2))))
 '(custom-variable-tag ((t (:foreground "light steel blue"))))
 '(display-time-mode t)
 '(ein:cell-input-area ((t (:extend t :background "gray7"))))
 '(ein:cell-input-prompt ((t (:inherit header-line))))
 '(ein:cell-output-area ((t (:foreground "olive drab"))) t)
 '(ein:cell-output-prompt ((t (:inherit header-line))))
 '(font-lock-builtin-face ((t (:foreground "light sea green"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#545c5e" :slant normal))))
 '(font-lock-constant-face ((t (:foreground "IndianRed1"))))
 '(font-lock-doc-face ((t (:foreground "cornflower blue"))))
 '(font-lock-function-name-face ((t (:foreground "SeaGreen3"))))
 '(font-lock-keyword-face ((t (:foreground "DeepSkyBlue3"))))
 '(font-lock-preprocessor-face ((t (:foreground "dodger blue"))))
 '(font-lock-string-face ((t (:foreground "medium sea green"))))
 '(font-lock-type-face ((t (:foreground "medium turquoise"))))
 '(font-lock-variable-name-face ((t (:foreground "pale violet red"))))
 '(global-display-line-numbers-mode t)
 '(highlight-numbers-number ((t (:foreground "light green"))))
 '(rcirc-my-nick ((t (:foreground "medium aquamarine"))))
 '(rcirc-nick-in-message-full-line '((t (:foreground "light blue" :weight bold))))
 '(rcirc-other-nick ((t (:foreground "antique white"))))
 '(rcirc-server ((t (:foreground "slate gray"))))
 '(rcirc-timestamp ((t (:inherit default :foreground "sky blue"))))
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-in-non-selected-windows '(bar . 0))
 '(ein:force-sync t)
 '(ein:jupyter-default-notebook-directory "~/some/path/to/your/project/dir")
 '(ein:output-area-inlined-images t)
 '(elpy-shell-echo-input nil)
 '(mailcap-user-mime-data nil)
 '(mode-line-percent-position '(-3 "%p")))
