(defun tmng-mode ()
  "Tmng Mode "
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "tmng-mode")
  (setq major-mode 'tmng-mode)
  (set-syntax-table tmng-mode-syntax-table)
  (set (make-local-variable 'font-lock-defaults) '(tmng-mode-font-lock-keywords))
  (run-hooks 'tmng-mode-hook))


(defvar tmng-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?# "<" st)
    (modify-syntax-entry ?\n ">" st)
    st)
  "Syntax table for `tmng-mode'.")
  

(defconst tmng-mode-font-lock-keywords
  (list
   '("[0-9]\\{4\\}\\.[0-9]\\{2\\}\\.[0-9]\\{2\\}(\\(月\\|火\\|水\\|木\\|金\\|土\\|日\\|__\\))" . font-lock-function-name-face)
   '("(.*)" . font-lock-variable-name-face)
   '("{.*}" . font-lock-variable-name-face)
   '("\\[.*\\]" . font-lock-variable-name-face)
   '("■.*" . font-lock-string-face)
   '("□.*" . font-lock-string-face)
   '("●.*" . font-lock-string-face)
   '("◎.*" . font-lock-string-face)
   '("○.*" . font-lock-string-face)
   '("\\(研究会合\\|月例発表\\)" . font-lock-string-face)
   )

  "Minimal highlighting expressions for Tmng mode")


(provide 'emacs-tmng)
