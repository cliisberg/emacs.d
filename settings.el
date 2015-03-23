;; General preferences and settings file, nothing fancy here really.

;; fill paragraph - wtf is dis man? TODO: Figure this out haha
(setq org-list-allow-alphabetical t)

; stop losint undo content, by setting big buffers
(setq undo-limit 20000000)
(setq undo-sring-limit 40000000)

;highlight the current marked line
(global-hl-line-mode 1)
(set-face-background 'hl-line "midnight blue")

;setup the preference of UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; auto reload buffers that change on disk so that we never edit stale buffers
(global-auto-revert-mode)

; do it for dired to, bu do itr silently
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

; fix the chunky scrolling
(setq scroll-conservatively 10000
scroll-step 1)

;; nuke trailing whitespaces when writing to a file
(add-hook 'write-file-hooks 'delete-trailing-whitespace)
;; display only tails of lines longer than 80 columns, tabs and
;; trailing whitespaces
(setq whitespace-line-column 80
           whitespace-style '(face tabs trailing lines-tail))

;; Allow Emacs to silently delete backup files
(setq delete-old-versions t)
;; show related parenteses by highlighting
(show-paren-mode 1)