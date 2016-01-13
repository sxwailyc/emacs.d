;;color theme config
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)


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
(setq py-install-directory "~/.emacs.d/site-lisp/python-mode")                                                                                                                                                                                                                (add-to-list 'load-path py-install-directory)                                                                                                                                                                                                                               
(require 'python-mode)  

;;web mode
(setq web-install-directory "~/.emacs.d/site-lisp/web-mode")                                                                                                                                                                                                                  (add-to-list 'load-path web-install-directory)                                                                                                                                                                                                                               
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
