;;
;; 51_webutil.el
;; ウェブ関連の設定
;; web-mode, php-mode,
;;


;;
;; web-mode
;;
;; (require 'web-mode)
;; 拡張子の設定
(add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))
;; インデント関係
(defun web-mode-hook ()
;;  "Hooks for Web mode."
  (setq web-mode-html-offset   4)
  (setq web-mode-css-offset    4)
  (setq web-mode-script-offset 4)
  (setq web-mode-php-offset    4)
  (setq web-mode-java-offset   4)
  (setq web-mode-asp-offset    4)
  (setq indent-tabs-mode t)
  (setq tab-width 4))
(add-hook 'web-mode-hook 'web-mode-hook)

;; Associate an engine
(setq web-mode-engines-alist
      '(("django"    . "\\.djhtml\\'"))
)

;; Extra auto pairs

(setq web-mode-extra-auto-pairs
      '(("django"  . (("{%" "%}")))
	))
(setq web-mode-enable-auto-pairing t)

;;
;; php-mode
;;
;; (require 'php-mode)
(put 'upcase-region 'disabled nil)

;;
;; less-css.mode
;;
;; (require 'less-css-mode)
