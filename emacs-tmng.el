(defun tmng-mode ()
  "Tmng Mode "
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "tmng-mode")
  (setq major-mode 'tmng-mode)

  (defvar tmng-mode-syntax-table
    (let ((st (make-syntax-table)))
      (modify-syntax-entry ?# "<" st)
      (modify-syntax-entry ?\n ">" st)
      st)
    "Syntax table for `tmng-mode'.")
  

  (defvar tmng-mode-font-lock-keywords
    '(" ([0-9]+)" . font-lock-constant-face)
       "Keyword highlighting specification for `tmng-mode'."))

(provide 'emacs-tmng)
