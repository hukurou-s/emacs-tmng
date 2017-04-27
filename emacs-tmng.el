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

(defvar font-lock-defaults
  (list
   'tmng-mode-font-lock-keywords
   nil ; keywords-only = nil
   nil ; case-fold = nil i.e. case-sensitiveh
   nil ; syntax-alist
   'beginning-of-line
   ))

(defconst tmng-mode-font-lock-keywords
   '(
     ("[0-9]\\{4\\}\\.[0-9]\\{2\\}\\.[0-9]\\{2\\}(\\(月\\|火\\|水\\|木\\|金\\|土\\|日\\|__\\))" . font-lock-function-name-face)
     ("(.*)" . font-lock-variable-name-face)
     ("{.*}" . font-lock-variable-name-face)
     ("\\[.*\\]" . font-lock-variable-name-face)
     ("■.*" . font-lock-string-face)
     ("□.*" . font-lock-string-face)
     ("●.*" . font-lock-string-face)
     ("◎.*" . font-lock-string-face)
     ("○.*" . font-lock-string-face)
     ("\\(研究会合\\|月例発表\\|定例会合\\|個人作業\\|委託業務\\|定例活動\\)" . font-lock-keyword-face)
     )
  
  "Minimal highlighting expressions for Tmng mode")

(provide 'emacs-tmng)
