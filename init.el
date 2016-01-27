
;;package config
(require 'package)
(package-initialize)


;;color theme config
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

;; Setting English Font
(set-face-attribute
'default nil :font "Courier 14")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "Microsoft Yahei" :size 16)))



;;remove the tool bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;;markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;shell
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))


(defun shell ()
  (interactive)
  (ansi-term "/bin/zsh"))

;;python mode
(setq py-install-directory "~/.emacs.d/site-lisp/python-mode")                                                                                                                                                                               (add-to-list 'load-path py-install-directory)                                                                                                                                                                                               

(require 'python-mode)  

;;web mode
(setq web-install-directory "~/.emacs.d/site-lisp/web-mode")                                                                                                                                                                                 (add-to-list 'load-path web-install-directory)                                                                                                                                                                                                                               
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))

(add-hook 'after-init-hook 'global-company-mode)

;;line number
(setq column-number-mode t)
(setq line-number-mode t)

;;display time
(display-time-mode 1)
(setq display-time-24hr-format 1)

;;(require 'init-company-jedi)
(require 'init-ido)
(require 'init-smex)
(require 'init-js2-mode)
(require 'init-git-emacs)
