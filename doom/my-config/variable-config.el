;; (map! :leader
;;       (:prefix-map ("a" . "applications")
;;        (:prefix ("j" . "journal")
;;         :desc "New journal entry" "j" #'org-journal-new-entry
;;         :desc "Search journal entry" "s" #'org-journal-search)))

;;All Mail  Bin  Drafts  Important  Sent  Sent Mail  Spam  Starred
;; (setq +mu4e-gmail-accounts '(("prodiptushar01@gmail.com" . "/gmail")))
;;
(set-email-account! "prodiptushar01@gmail.com"
  '((mu4e-sent-folder       . "/prodiptushar01@gmail.com/\[Gmail\]/Sent Mail")
    (mu4e-drafts-folder     . "/prodiptushar01@gmail.com/\[Gmail\]/Drafts")
    (mu4e-trash-folder      . "/prodiptushar01@gmail.com/\[Gmail\]/Bin")
    (mu4e-refile-folder     . "/prodiptushar01@gmail.com/\[Gmail\]/All Mail")
    (mu4e-spam-folder     . "/prodiptushar01@gmail.com/\[Gmail\]/Spam")
    (smtpmail-smtp-user     . "prodiptushar01@gmail.com")
    (mu4e-compose-signature . "---\nProdip Kumar"))
  t)
(setq mu4e-index-cleanup nil
      mu4e-index-lazy-check t)
(setq mu4e-get-mail-command "mbsync -a"
      ;; get emails and index every 5 minutes
      mu4e-update-interval 300
	  ;; send emails with format=flowed
	  mu4e-compose-format-flowed t
	  ;; no need to run cleanup after indexing for gmail
	  mu4e-index-cleanup nil
	  mu4e-index-lazy-check t
      ;; more sensible date format
      mu4e-headers-date-format "%d.%m.%y")

(setq sendmail-program "/usr/bin/msmtp"
      send-mail-function #'smtpmail-send-it
      message-sendmail-f-is-evil t
      message-sendmail-extra-arguments '("--read-envelope-from")
      message-send-mail-function #'message-send-mail-with-sendmail)

(setq! anki-editor-create-decks t)

(provide 'variable-config)
