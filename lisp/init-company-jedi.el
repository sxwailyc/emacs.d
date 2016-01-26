;;company-jedi config
(add-to-list 'load-path "~/.emacs.d/site-lisp/company-jedi")
(require 'company-jedi)
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init-company-jedi)
