;; flyspell spell checking.
(use-package flyspell
  :delight flyspell-mode
  :commands flyspell-mode
  :init (add-hook 'text-mode-hook #'flyspell-mode)
  :config
  (setq ispell-extra-args '("--sug-mode=fast"))
  (setq flyspell-issue-message-flag nil)
  (setq flyspell-issue-welcome-flag nil))

;; lorem ipsum, generate fun text
(use-package lorem-ipsum)

;; markdown
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :config (add-hook 'markdown-mode-hook (lambda () (setq display-line-numbers t))))

(use-package markdownfmt
  :config
  (progn
    ;; (add-hook 'markdown-mode-hook #'markdownfmt-enable-on-save)
    ))

(provide 'sm-writing)
