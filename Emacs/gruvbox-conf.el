  (use-package gruvbox-theme
    :ensure nil
    :config
    (progn
      (defvar after-load-theme-hook nil
        "Hook run after a color theme is loaded using `load-theme'.")
      (defadvice load-theme (after run-after-load-theme-hook activate)
        "Run `after-load-theme-hook'."
        (run-hooks 'after-load-theme-hook))
      (defun customize-gruvbox ()
        "Customize gruvbox theme"
        (if (member 'gruvbox custom-enabled-themes)
            (custom-theme-set-faces
             'gruvbox
             '(cursor                 ((t (:foreground "#928374"))))
             '(org-block              ((t (:foreground "#ebdbb2":background "#1c2021" :extend t))))
             '(org-block-begin-line   ((t (:inherit org-block :background "#1d2021" :foreground "#665c54" :extend t))))
             '(org-block-end-line     ((t (:inherit org-block-begin-line))))
             '(org-document-info      ((t (:foreground "#d5c4a1" :weight bold))))
             '(org-document-info-keyword    ((t (:inherit shadow))))
             '(org-document-title     ((t (:foreground "#fbf1c7" :weight bold :height 1.4))))
             '(org-meta-line          ((t (:inherit shadow))))
             '(org-target             ((t (:height 0.7 :inherit shadow))))
             '(org-link               ((t (:foreground "#b8bb26" :background "#32302f" :overline nil))))  ;; 
             '(org-indent             ((t (:inherit org-hide))))
             '(org-indent             ((t (:inherit (org-hide fixed-pitch)))))
             '(org-footnote           ((t (:foreground "#8ec07c" :background "#32302f" :overline nil))))
             '(org-ref-cite-face      ((t (:foreground "#fabd2f" :background "#32302f" :overline nil))))  ;; 
             '(org-ref-ref-face       ((t (:foreground "#83a598" :background "#32302f" :overline nil))))
             '(org-ref-label-face     ((t (:inherit shadow :box t))))
             '(org-drawer             ((t (:inherit shadow))))
             '(org-property-value     ((t (:inherit org-document-info))) t)
             '(org-tag                ((t (:inherit shadow))))
             '(org-date               ((t (:foreground "#83a598" :underline t))))
             '(org-verbatim           ((t (:inherit org-block :background "#3c3836" :foreground "#d5c4a1"))))
             '(org-code               ((t (:inherit org-verbatim :background "#3c3836" :foreground "#fe8019"))))
             '(org-quote              ((t (:inherit org-block :slant italic))))
             '(org-level-1            ((t (:foreground "#83a598" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Blue
             '(org-level-2            ((t (:foreground "#8ec07c" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Aqua
             '(org-level-3            ((t (:foreground "#b8bb26" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Green
             '(org-level-4            ((t (:foreground "#fabd2f" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Yellow
             '(org-level-5            ((t (:foreground "#fe8019" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Orange
             '(org-level-6            ((t (:foreground "#fb4934" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Red
             '(org-level-7            ((t (:foreground "#d3869b" :background "#282828" :weight bold :height 1.1 :overline nil :extend t)))) ;; Blue
             '(org-headline-done      ((t (:foreground "#928374" :background "#282828" :weight bold :overline nil :extend t)))) ;; Gray
             '(org-ellipsis           ((t (:inherit shadow :height 1.0 :weight bold :extend t)))) 
             '(org-table              ((t (:foreground "#d5c4a1" :background "#3c3836"))))

             ;; Doom-modeline settings
             '(doom-modeline-evil-insert-state   ((t (:foreground "#b8bb26" :weight bold)))) ;; Green
             '(doom-modeline-evil-emacs-state    ((t (:foreground "#b16286" :weight bold)))) ;; Purple
             '(doom-modeline-evil-normal-state   ((t (:foreground "#83a598" :weight bold)))) ;; Blue
             '(doom-modeline-evil-visual-state   ((t (:foreground "#fbf1c7" :weight bold)))) ;; Beige
             '(doom-modeline-evil-replace-state  ((t (:foreground "#fb4934" :weight bold)))) ;; Red
             '(doom-modeline-evil-operator-state ((t (:foreground "#fabd2f" :weight bold)))) ;; Yellow
             '(mode-line                         ((t (:background "#504945" :foreground "#d5c4a1"))))
             '(mode-line-inactive                ((t (:background "#3c3836" :foreground "#7c6f64"))))
             '(link                              ((t (:foreground "#b8bb26" :overline t))))

             '(line-number                       ((t (:background "#32302f" :foreground "#665c54"))))
             ;; Mu4E mail client faces
             '(mu4e-header-face                  ((t (:foreground "#d5c4a1" :background "#282828"))))
             '(mu4e-replied-face                 ((t (:inherit mu4e-header-face :foreground "#b8bb26"))))
             '(mu4e-draft-face                   ((t (:inherit mu4e-header-face :foreground "#fabd2f"))))
             '(mu4e-link-face                    ((t (:inherit mu4e-face :foreground "#8ec07c" :underline t))))
             '(mu4e-forwarded-face               ((t (:inherit mu4e-header-face :foreground "#80c07c"))))
             '(mu4e-flagged-face                 ((t (:inherit mu4e-header-face))))
             '(mu4e-header-highlight-face        ((t (:underline nil :background "#3c3836"))))
             '(mu4e-unread-face                  ((t (:foreground "#fbf1c7" :weight bold))))  ;; Originally #83a598 
             '(mu4e-cited-1-face                 ((t (:foreground "#458588" :slant italic))))
             '(mu4e-cited-2-face                 ((t (:foreground "#689d6a" :slant italic))))
             '(mu4e-cited-3-face                 ((t (:foreground "#98971a" :slant italic))))
             '(mu4e-cited-4-face                 ((t (:foreground "#d79921" :slant italic))))
             '(mu4e-cited-5-face                 ((t (:foreground "#d65d0e" :slant italic))))
             '(mu4e-cited-6-face                 ((t (:foreground "#cc241d" :slant italic))))
             '(mu4e-cited-7-face                 ((t (:foreground "#b16286" :slant italic))))
             '(mu4e-cited-8-face                 ((t (:foreground "#458588" :slant italic))))
             '(mu4e-cited-9-face                 ((t (:foreground "#689d6a" :slant italic))))
             '(mu4e-cited-10-face                 ((t (:foreground "#98971a" :slant italic))))
             '(mu4e-cited-11-face                 ((t (:foreground "#d79921" :slant italic))))
             '(mu4e-cited-12-face                 ((t (:foreground "#d65d0e" :slant italic))))
             '(mu4e-cited-13-face                 ((t (:foreground "#cc241d" :slant italic))))
             '(mu4e-cited-14-face                 ((t (:foreground "#b16286" :slant italic))))
             '(pdf-view-midnight-colors           '("#d5c4a1" . "#282828"))
             )
            (setq org-n-level-faces 8)
          ) ;; test
        )  
      (add-hook 'after-load-theme-hook 'customize-gruvbox)
      )
      (load-theme 'gruvbox t) 
      (enable-theme 'gruvbox)
    )
