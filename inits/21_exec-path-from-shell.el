;;
;; 21_exec-path-from-shell
;;


;; ;; load environment variables
;; ;; 追記 GEMに関する環境変数を設定すると rbenv経由で rubyがうまく使えなかったので削除
;; (let ((envs '("PATH" "VIRTUAL_ENV" "GOROOT" "GOPATH")))
;;   (exec-path-from-shell-copy-envs envs))
