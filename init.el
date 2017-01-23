;;
;; init.el 初期設定
;;

;; ;;
;; ;; ~/.emacs.d/elisp  以下全部読み込み
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/elpa/")

;; initファイルを読み込み
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits/")















