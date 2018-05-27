;;; sm-appearance.el --- Display and appearance related settings.

;; Disable cursor display in inactive windows.
(setq-default cursor-in-non-selected-windows nil)

(defvar sm/fixed-font-name "Inconsolata LGC")
(defvar sm/fixed-font-weight 'normal)
;;(defvar sm/var-font-name "SF UI Text")
(defvar sm/var-font-name "SF Pro Text")
(defvar sm/font-height 130)

;; Native line numbers (unused until 26.x, no harm done....)
(setq-default display-line-number-width 4)

(add-hook 'emacs-startup-hook ;; 'window-setup-hook
          (lambda nil
            (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
            (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
            (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
            (set-face-attribute
             'default nil
             :family sm/fixed-font-name
             :height sm/font-height
             :weight sm/fixed-font-weight)
            ;; this is part of the native line numbers in v26
            ;; (set-face-attribute
            ;;  'line-number nil
            ;;  :family sm/fixed-font-name
            ;;  :height (- sm/font-height 10)
            ;;  :weight sm/fixed-font-weight)
            (set-face-attribute
             'variable-pitch nil
             :family sm/var-font-name))
          (use-package heroku-theme
            :config (load-theme 'heroku t)))

(use-package rainbow-mode
  :straight (rainbow-mode :type git :host github :repo "emacsmirror/rainbow-mode")
  :commands rainbow-mode)

(provide 'sm-appearance)
