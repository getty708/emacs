;;
;; 02_buffer.el
;; バッファ関連の管理
;;

;;現在の行のハイライトする
(global-hl-line-mode t)

;;対応する括弧をハイライト
(show-paren-mode t) 
(setq show-paren-style 'expression)


;; フルスクリーン
(set-frame-parameter nil 'fullscreen 'fullboth)

;;; 位置の設定
;;; 現在行を目立たせる
(global-hl-line-mode)
;;; カーソルの位置が何文字目かを表示す
(column-number-mode t)
;;; カーソルの位置が何行目かを表示する
(line-number-mode t)
;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)


;;;Buffer
;;; ファイル名が重複していたらディレクトリ名を追加する。
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
