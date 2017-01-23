;;
;; 50_yatex.el
;; Yataxの設定
;;

(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode)
        ("\\.ltx$" . yatex-mode)
        ("\\.sty$" . yatex-mode)) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

;; set YaTeX coding system
(setq YaTeX-kanji-code 4) ; UTF-8 の設定
(setq YaTeX-latex-message-code 'utf-8)


(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)

(setq tex-command "/usr/local/texlive/2015/bin/x86_64-darwin/platex -synctex=1"); typeset command


;;
;; Skimとの連携
(setq YaTeX-inhibit-prefix-letter t)
(setq YaTeX-dvi2-command-ext-alist
      '(("TeXworks\\|texworks\\|texstudio\\|mupdf\\|SumatraPDF\\|Preview\\|Skim\\|TeXShop\\|evince\\|okular\\|zathura\\|qpdfview\\|Firefox\\|firefox\\|chrome\\|chromium\\|Adobe\\|Acrobat\\|AcroRd32\\|acroread\\|pdfopen\\|xdg-open\\|open\\|start" . ".pdf")))
(setq dvi2-command "/usr/bin/open -a Skim")
(setq tex-pdfview-command "/usr/bin/open -a Skim")

;;
;; RefTex modeとの連携
(add-hook 'yatex-mode-hook 'turn-on-reftex)


;;
;; ショートカットキーの登録
;; 
(setq YaTeX-math-sign-alist-private
 '(("Q" "mathbb{Q}" "(Q)")
   ("ZZ" "mathbb{Z}" "ZZ")
   ("R" "mathbb{R}" "R")
   ("C" "mathbb{C}" "C")
   ("N" "mathbb{N}" "N")
   ("Z>0" "mathbb{Z}_{>0}" "Z>0")
   ("|/" "\mid \hspace{-.67em}/" "|/")
   ("F" "mathbb{F}" "F")
   ("Fp" "mathbb{F}_p" "F_p")
   ("Fq" "mathbb{F}_q" "F_q")))

 

