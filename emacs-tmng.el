(defun tmng-mode ()
  "Tmng Mode "
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "tmng-mode")
  (setq major-mode 'tmng-mode)
  (set-syntax-table tmng-mode-syntax-table)
  (set (make-local-variable 'font-lock-defaults) '(tmng-mode-font-lock-keywords))
  (run-hooks 'wpdl-mode-hook))


  (defvar tmng-mode-syntax-table
    (let ((st (make-syntax-table)))
      (modify-syntax-entry ?# "<" st)
      (modify-syntax-entry ?\n ">" st)
      st)
    "Syntax table for `tmng-mode'.")
  

  (defconst tmng-mode-font-lock-keywords (list
;    '("\\ {'\\w*'\\}" . font-lock-variable-name-face)
    '("{}" . font-lock-variable-name-face))
    "Minimal highlighting expressions for Tmng mode")

(provide 'emacs-tmng)
