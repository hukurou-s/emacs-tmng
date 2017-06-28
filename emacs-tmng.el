(defun tmng-mode ()
  "Tmng Mode "
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "tmng-mode")
  (setq major-mode 'tmng-mode)
  (set-syntax-table tmng-mode-syntax-table)
  (set (make-local-variable 'font-lock-defaults) '(tmng-mode-font-lock-keywords-2))
  (run-hooks 'tmng-mode-hook))


(defvar tmng-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?# "<" st)
    (modify-syntax-entry ?\n ">" st)
    st)
  "Syntax table for `tmng-mode'.")

(defconst tmng-mode-font-lock-keywords-1
  	  (list
	   '("[0-9]\\{4\\}\\.[0-9]\\{2\\}\\.[0-9]\\{2\\}(\\(月\\|火\\|水\\|木\\|金\\|土\\|日\\|__\\))" . font-lock-function-name-face)
	   '("[0-9]\\{2\\}\\.[0-9]\\{2\\}(\\(月\\|火\\|水\\|木\\|金\\|土\\|日\\|__\\))" . font-lock-function-name-face)
	   '("[0-9]\\{2\\}:[0-9]\\{2\\}-[0-9]\\{2\\}:[0-9]\\{2\\}" . font-lock-function-name-face)
	   '("(.*)" . font-lock-variable-name-face)
	   '("{.*}" . font-lock-variable-name-face)
	   '("<.*>" . font-lock-variable-name-face)
	   '("\\[.*\\]" . font-lock-variable-name-face)
	   ;'("\\((\\|{\\|<\\|\\[\\).*\\()\\|}\\|>\\|\\]\\)" . font-lock-string-face)
	   ;'("\\(研究会合\\|月例発表\\|定例会合\\|個人作業\\|委託業務\\|定例活動\\)" . font-lock-keyword-face)
	   )

	  "Minimal highlighting expressions for Tmng mode")


(defconst tmng-mode-font-lock-keywords-2
  (append tmng-mode-font-lock-keywords-1
	  (list
	   '("\\(月例発表\\)" . font-lock-warning-face)
	   '("\\(定例会合\\|個人作業\\|委託業務\\|定例活動\\|週間予定\\|個人報告\\|週直担当\\|研究会合\\)" . font-lock-keyword-face)
	   '("\\(■\\|□\\|●\\|◎\\|○\\).*" . font-lock-string-face)
	   '("\\(■\\|□\\|●\\|◎\\|○\\)" . font-lock-string-face)
	   ))
  
   "Minimal highlighting expressions for Tmng mode")

(provide 'emacs-tmng)
