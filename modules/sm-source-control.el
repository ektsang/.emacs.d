;;; sm-source-control.el --- Source control and related configuration.

;; gist.el
;; Provides ability to create github gists from region, file, etc., as well as
;; browse, edit, and update metadata of your gists.
;; (use-package gist
;;   :commands gist-region-or-buffer-private
;;   :bind ("C-c g p" . gist-region-or-buffer-private)
;;   :config
;;   (setq gist-view-gist t))

(defun process-exit-code-and-output (program &rest args)
  "Run PROGRAM with ARGS and return the exit code and output in a list."
  (with-temp-buffer
    (list (apply 'call-process program nil (current-buffer) nil args)
          (buffer-string))))

(defun sm/magit-or-monky-status ()
  "Call `magit-status' or `monky-status' depending on whether a
git or hg repository is found in the buffer-local working dir."
  (interactive)
  (cond
   ((eq (car (process-exit-code-and-output "hg" "status")) 0)
    (monky-status))
   ((eq (car (process-exit-code-and-output "git" "status")) 0)
    (call-interactively 'magit-status))
   (t (message "No hg or git repository found at %s" default-directory))))

;; magit and friends
;; Modes for git and mercurial.
;;  Cleaning up magit-wip-mode after merge...
;;    git update-ref -d refs/wip/index/refs/heads/smbus
;;    git update-ref -d refs/wip/wtree/refs/heads/smbus
(use-package magit
  :commands magit-status
  :bind ("C-x g" . magit-status)
  :config
  ;; Remove git from backends that builtin VC mode handles
  (setq vc-handled-backends (delq 'Git vc-handled-backends))
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  (add-hook 'git-commit-mode-hook '(lambda ()
                                     (progn
                                       (git-commit-turn-on-flyspell)
                                       (git-commit-turn-on-auto-fill)
                                       (setq git-commit-summary-max-length 50))))
  )

(use-package forge
  :after magit)

(use-package git-commit)
(global-git-commit-mode)

;; visit previous versions of files
(use-package git-timemachine)

;; highlight file differences (fringe, dired)
(use-package diff-hl
  :init
  (progn
    (global-diff-hl-mode)
    (unless (display-graphic-p)
      (diff-hl-margin-mode))
    (add-hook 'dired-mode-hook 'diff-hl-dired-mode)))

(provide 'sm-source-control)
