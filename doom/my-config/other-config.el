
(setq doom-theme 'doom-one)
(setq! doom-font (font-spec :family "Fira Code" :size 13 :weight 'medium))
(setq! doom-unicode-font (font-spec :family "FiraCode Nerd Font" :size 10 :weight 'medium))

;; (global-fancy-dabbrev-mode)
;; (global-set-key (kbd "TAB") 'fancy-dabbrev-expand-or-indent)
;; (global-set-key (kbd "<backtab>") 'fancy-dabbrev-backward)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-idle-delay 0.500)
(setq company-idle-delay 0.02)
(setq gc-cons-threshold 100000000)
;(beacon-mode 1)
(setq fancy-splash-image "~/.config/doom/solarized.png")
;; Enable the www ligature in every possible major mode
(ligature-set-ligatures 't '("www"))

;; Enable ligatures in programming modes
(ligature-set-ligatures 'prog-mode '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\" "{-" "::"
                                     ":::" ":=" "!!" "!=" "!==" "-}" "----" "-->" "->" "->>"
                                     "-<" "-<<" "-~" "#{" "#[" "##" "###" "####" "#(" "#?" "#_"
                                     "#_(" ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*" "/**"
                                     "/=" "/==" "/>" "//" "///" "&&" "||" "||=" "|=" "|>" "^=" "$>"
                                     "++" "+++" "+>" "=:=" "==" "===" "==>" "=>" "=>>" "<="
                                     "=<<" "=/=" ">-" ">=" ">=>" ">>" ">>-" ">>=" ">>>" "<*"
                                     "<*>" "<|" "<|>" "<$" "<$>" "<!--" "<-" "<--" "<->" "<+"
                                     "<+>" "<=" "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<"
                                     "<~" "<~~" "</" "</>" "~@" "~-" "~>" "~~" "~~>" "%%"))

(global-ligature-mode 't)

(require 'key-chord)
(key-chord-mode t)
(key-chord-define-global "jk" 'evil-normal-state)

(provide 'other-config)
