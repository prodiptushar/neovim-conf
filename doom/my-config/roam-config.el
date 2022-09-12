
(setq! org-directory "~/Document/org/")

(use-package! org-roam
  :config
  (setq org-roam-complete-everywhere t
        org-roam-capture-templates
                '(("d" "default" plain
                   "%?"
                   :if-new (file+head "Inbox/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
                   :unnarrowed t)
                  ("s" "study notes" plain
                   (file "/home/prodip/Document/org-notes/Templates/StudyTemplate.org")
                   :if-new (file+head "Study/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
                   :unnarrowed t)
                  ("n" "email newsletter" plain
                   (file "/home/prodip/Document/org-notes/Templates/Default.org")
                   :if-new (file+head "Inbox/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: :newsletter:\n#+date: %<%Y-%m-%d>\n")
                   :unnarrowed t)
                  ("p" "project" plain
                   (file "/home/prodip/Document/org/org-notes/Templates/ProjectTemplate.org")
                   :if-new (file+head "Projects/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
                   :unnarrowed t))
        org-roam-dailies-capture-templates
                '(("d" "default" entry "* %<%I:%M %p> %?" :target
                   (file+head "%<%Y-%m-%d>.org" "%<%Y-%m-%d>\n")))
))

(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org-roam ;; or :after org
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))
(provide 'roam-config)

;; Roam
