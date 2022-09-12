
(custom-set-variables '(company-lua-executable (executable-find "lua5.3") ) )
;(setq! debug-on-error t)
;(setq! lsp-clients-lua-server-bin "/home/prodip/.emacs.d/.local/etc/lsp/lua-language-server/bin/lua-language-server")
;(setq! lsp-clients-lua-language-server-main-location "/home/prodip/.emacs.d/.local/etc/lsp/lua-language-server/main.lua")
(setq ;lsp-clients-lua-language-server-install-dir (f-join (getenv "HOME") ".local/share/lua-language-server/"); Default: ~/.emacs.d/.cache/lsp/lua-language-server/
        lsp-clients-lua-language-server-install-dir "/home/prodip/.emacs.d/.local/etc/lsp/lua-language-server/"
        lsp-clients-lua-language-server-bin "/home/prodip/.emacs.d/.local/etc/lsp/lua-language-server/bin/lua-language-server"
        lsp-clients-lua-language-server-main-location "/home/prodip/.emacs.d/.local/etc/lsp/lua-language-server/main.lua"
        lsp-lua-workspace-max-preload 2048 ; Default: 300, Max preloaded files
        lsp-lua-workspace-preload-file-size 1024; Default: 100, Skip files larger than this value (KB) when preloading.
        )
(setq-hook! 'js2-mode-hook flycheck-checker 'javascript-eslint)
(set-company-backend! '(company-dict company-capf company-yasnippet company-tabnine))

; --- spell check
(after! spell-fu
  (setq spell-fu-idle-delay 0.5))
(setf (alist-get 'markdown-mode +spell-excluded-faces-alist)
      '(markdown-code-face
	markdown-reference-face
	markdown-link-face
	markdown-url-face
	markdown-markup-face
	markdown-html-attr-value-face
	markdown-html-attr-name-face
	markdown-html-tag-name-face))

; --- spell check

(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-idle-delay 0.500)
(setq company-idle-delay 0.02)
(setq gc-cons-threshold 100000000)
(setq! company-show-numbers t)
(after! lsp-ui
  (setq lsp-ui-doc-enable t))

(provide 'lsp-config)
