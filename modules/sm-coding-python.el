;;; sm-coding-python.el --- Python and anaconda-mode setup.

(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode))

;; Clone yapf somewhere and throw a script like this onto your bin
;; (sigh...)
;;
;; #!/bin/sh
;; PYTHONPATH=$HOME/tmp/yapf python3 $HOME/tmp/yapf/yapf "$@"
(use-package py-yapf
  :config
  (add-hook 'python-mode-hook 'py-yapf-enable-on-save))


(provide 'sm-coding-python)
