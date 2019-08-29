;; ag (silver surfer)
(use-package ag
  :bind ("C-c s" . ag)
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-buffers t))

(use-package rg)

;; anzu
;; Shows isearch results in mode-line and better query-replace.
(use-package anzu
  :delight anzu-mode
  :demand                               ; can't defer, want it globally
  :config
  (global-anzu-mode t)
  ;; use anzu's versions of these commands
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
  :bind (("M-%" . anzu-query-replace)
         ("C-M-%" . anzu-query-replace-regexp)))

;; engine
;; Search engines integrated into Emacs.
(use-package engine-mode
  :commands (engine/search-github engine/search-google)
  :bind (("C-c / g" . engine/search-google)
         ("C-c / h" . engine/search-github))
  :config
  (setq engine/browser-function 'eww-browse-url)
  (defengine github
    "https://github.com/search?ref=simplesearch&q=%s"
    :keybinding "h")
  (defengine google
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
    :keybinding "g"))

(provide 'sm-searching)
