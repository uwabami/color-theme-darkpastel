;;;; color-theme-darkpastel --- dark background and pastel
;;
;; Copyright(C) 2011-2014 Youhei SASAKI All rights reserved.
;;
;; Author: Youhei SASAKI <uwabami@gfd-dennou.org>
;; URL: https://github.com/uwabami/color-theme-darkpastel
;; Version: 0.3
;; License: GPL-3+
;; $Lastupdate: 2014-09-04 11:04:26$
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Code:

(eval-and-compile
  (require 'color-theme))

(defvar my:l:black      "#020202")
(defvar my:n:black      "#242424")
(defvar my:h:black      "#4c4c4c")
(defvar my:l:red        "#3c0202")
(defvar my:n:red        "#ff4c4c")
(defvar my:h:red        "#ff7f7f")
(defvar my:n:violet     "#ff4ca5")
(defvar my:h:violet     "#ff7fbf")
(defvar my:l:magenta    "#3c023c")
(defvar my:n:magenta    "#ff7fff")
(defvar my:h:magenta    "#ffbfff")
(defvar my:n:purple     "#bf4cff")
(defvar my:h:purple     "#bf7fff")
(defvar my:l:blue       "#02023c")
(defvar my:n:blue       "#4c4cff")
(defvar my:h:blue       "#7f7fff")
(defvar my:n:lightblue  "#4ca5ff")
(defvar my:h:lightblue  "#7fbfff")
(defvar my:l:cyan       "#023c3c")
(defvar my:n:cyan       "#4cffff")
(defvar my:h:cyan       "#7fffff")
(defvar my:n:emerald    "#4cffa5")
(defvar my:h:emerald    "#7fffbf")
(defvar my:l:green      "#023c02")
(defvar my:n:green      "#4cff4c")
(defvar my:h:green      "#7fff7f")
(defvar my:n:lightgreen "#bfff4c")
(defvar my:h:lightgreen "#bfff7f")
(defvar my:l:yellow     "#3c3c02")
(defvar my:n:yellow     "#ffff4c")
(defvar my:h:yellow     "#ffff7f")
(defvar my:n:orange     "#ffa54c")
(defvar my:h:orange     "#ffbf7f")
(defvar my:l:white      "#777777")
(defvar my:n:white      "#cccccc")
(defvar my:h:white      "#f6f3e7")

;; theme def.
(defun color-theme-darkpastel ()
  "my color theme - dark background + pastel font-lock
   @see https://github.com/uwabami/color-theme-darkpastel"
  (interactive)
  (color-theme-install
   `(color-theme-darkpastel
     ;; color-theme mapping
     (
      (background-mode . dark)
      (foreground-color . ,my:h:white )
      (background-color . ,my:n:black)
      )
     (default                             ((t (:foreground ,my:h:white ))))
     (font-lock-builtin-face              ((t (:foreground ,my:h:blue ))))
     (font-lock-comment-delimiter-face    ((t (:foreground ,my:l:white ))))
     (font-lock-comment-face              ((t (:foreground ,my:l:white ))))
     (font-lock-constant-face             ((t (:foreground ,my:h:orange ))))
     (font-lock-doc-face                  ((t (:foreground ,my:h:emerald ))))
     (font-lock-doc-string-face           ((t (:foreground ,my:h:emerald ))))
     (font-lock-function-name-face        ((t (:foreground ,my:h:purple ))))
     (font-lock-keyword-face              ((t (:foreground ,my:h:red ))))
     (font-lock-link-face                 ((t (:foreground ,my:h:cyan :bold t ))))
     (font-lock-negation-char-face        ((t (:foreground ,my:n:cyan ))))
     (font-lock-preprocessor-face         ((t (:foreground ,my:n:red ))))
     (font-lock-reference-face            ((t (:foreground ,my:h:violet ))))
     (font-lock-regexp-grouping-backslash ((t (:foreground ,my:h:lightgreen  :bold t ))))
     (font-lock-regexp-grouping-construct ((t (:foreground ,my:h:blue :bold t ))))
     (font-lock-string-face               ((t (:foreground ,my:h:green ))))
     (font-lock-type-face                 ((t (:foreground ,my:h:yellow ))))
     (font-lock-variable-name-face        ((t (:foreground ,my:h:lightblue ))))
     (font-lock-warning-face              ((t (:foreground ,my:h:magenta :bold t ))))
     ;; border
     ;; buffer-menu-buffer
     ;; button
     (cursor                              ((t (:background ,my:n:cyan ))))
     (error                               ((t (:background nil :foreground ,my:n:violet :underline t ))))
     (escape-glyph                        ((t (:foreground ,my:n:yellow :weight bold))))
     (fringe                              ((t (:background ,my:l:black ))))
     ;; ffap
     ;; file-name-shadow
     (fixed-pitch                         ((t (:inherit default :height 1.0 ))))
     ;; glyphless-char
     (header-line                         ((t (:foreground ,my:n:green ))))
     ;; help-argument-name
     (highlight                           ((t (:background ,my:h:black :underline nil ))))
     (isearch                             ((t (:foreground ,my:h:white :background ,my:n:blue :underline t ))))
     (isearch-fail                        ((t (:background ,my:n:red ))))
     ;; italic
     (lazy-highlight                      ((t (:foreground ,my:h:white :background ,my:n:lightblue ))))
     (link                                ((t (:foreground ,my:h:cyan :underline t ))))
     (link-visited                        ((t (:foreground ,my:n:magenta :underline t ))))
     ;; menu
     (match                               ((t (:foreground nil :background nil :underline ,my:n:blue :weight bold))))
     (minibuffer-prompt                   ((t (:foreground ,my:n:red  ))))
     (mode-line                           ((t (:foreground ,my:n:cyan :bold t :background ,my:l:white :box (:line-width -1 :style released-button)))))
     (mode-line-buffer-id                 ((t (:bold t))))
     (mode-line-emphasis                  ((t (:bold t))))
     (mode-line-highlight                 ((t (:box (:line-width -1 :color ,my:n:white :style released-button) :bold t))))
     (mode-line-inactive                  ((t (:foreground ,my:l:white :background ,my:h:black ))))
     (next-error                          ((t (:foreground ,my:n:magenta ))))
     (nobreak-space                       ((t (:inherit default :underline ,my:h:yellow ))))
     (query-replace                       ((t (:background ,my:n:magenta ))))
     (region                              ((t (:background ,my:l:yellow ))))
     (secondary-selection                 ((t (:background ,my:l:cyan ))))
     (shadow                              ((t (:foreground ,my:n:white ))))
     ;; scroll-bar
     ;; success
     (tooltip                             ((t (:foreground ,my:n:black :background ,my:n:yellow ))))
     (trailing-whitespace                 ((t (:background ,my:h:red ))))
     ;; tool-bar
     ;; underline
     (variable-pitch                      ((t (:inherit default :height 1.0 ))))
     ;; vertical-border
     (warning                             ((t (:background nil :foreground ,my:h:red :underline t))))
     (hl-line                             ((t (:inherit highlight :background ,my:n:black ))))

     ;; ----------------------------------------------------------------------
     ;; howm
     ;; ----------------------------------------------------------------------
     (howm-menu-key-face ((t (:foreground ,my:n:orange ))))
     ;; (howm-menu-list-face
     (howm-mode-keyword-face ((t (:foreground ,my:h:blue ))))
     (howm-mode-ref-face ((t (:foreground ,my:h:cyan ))))
     (howm-mode-title-face ((t (:bold t :foreground ,my:h:yellow :underline t))))
     ;; howm-mode-wiki-face
     ;; howm-reminder-deadline-face
     ;; howm-reminder-defer-face
     ;; howm-reminder-done-face
     ;; howm-reminder-late-deadline-face
     ;; howm-reminder-normal-face
     ;; howm-reminder-schedule-face
     ;; howm-reminder-today-face
     ;; howm-reminder-todo-face
     ;; howm-reminder-tomorrow-face
     ;; howm-view-empty-face
     ;; howm-view-hilit-face
     ;; howm-view-name-face

     ;; ----------------------------------------------------------------------
     ;; popup
     ;; ----------------------------------------------------------------------
     ;; popup-face
     ;; popup-isearch-match
     ;; popup-menu-face
     ;; popup-menu-mouse-face
     ;; popup-menu-selection-face
     ;; popup-menu-summary-face
     ;; popup-scroll-bar-background-face
     ;; popup-scroll-bar-foreground-face
     ;; popup-summary-face
     ;; popup-tip-face

     ;; ----------------------------------------------------------------------
     ;; show-paren-match
     ;; ----------------------------------------------------------------------
     (show-paren-match-face    ((t (:background ,my:l:blue :foreground nil :underline nil :bold t ))))
     (show-paren-mismatch-face ((t (:background ,my:l:red :foreground nil :underline ,my:n:red :bold t))))

     ;; ----------------------------------------------------------------------
     ;; outline
     ;; ----------------------------------------------------------------------
     (outline-1  ((t (:bold t :foreground ,my:h:yellow  ))))
     (outline-2  ((t (:bold t :foreground ,my:h:red     ))))
     (outline-3  ((t (:bold t :foreground ,my:h:emerald ))))
     (outline-4  ((t (:bold t :foreground ,my:h:magenta ))))
     (outline-5  ((t (:bold t :foreground ,my:h:purple  ))))
     (outline-6  ((t (:bold t :foreground ,my:h:cyan    ))))
     (outline-7  ((t (:bold t :foreground ,my:h:orange  ))))
     (outline-8  ((t (:bold t :foreground ,my:h:black   ))))

     ;; ----------------------------------------------------------------------
     ;; org-mode
     ;; ----------------------------------------------------------------------
     ;; org-agenda-calendar-event
     ;; org-agenda-calendar-sexp
     ;; org-agenda-clocking
     ;; org-agenda-column-dateline
     ;; org-agenda-current-time
     ;; org-agenda-date
     ;; org-agenda-date-today
     ;; org-agenda-date-weekend
     ;; org-agenda-diary
     ;; org-agenda-dimmed-todo-face
     ;; org-agenda-done
     ;; org-agenda-filter-category
     ;; org-agenda-filter-regexp
     ;; org-agenda-filter-tags
     ;; org-agenda-restriction-lock
     ;; org-agenda-structure
     ;; org-archived
     ;; org-beamer-tag
     (org-block ((t (:inherit default :background ,my:l:green ))))
     ;; org-block-background
     ;; org-block-begin-line
     ;; org-block-end-line
     ;; org-checkbox
     ;; org-checkbox-statistics-done
     ;; org-checkbox-statistics-todo
     ;; org-clock-overlay
     ;; org-code
     ;; org-column
     ;; org-column-title
     ;; org-date
     ;; org-date-selected
     ;; org-default
     ;; org-document-info
     ;; org-document-info-keyword
     ;; org-document-title
     ;; org-done
     ;; org-drawer
     ;; org-ellipsis
     ;; org-footnote
     ;; org-formula
     ;; org-headline-done
     ;; org-hide
     ;; org-latex-and-related
     (org-level-1  ((t (:inherint outline-1 ))))
     (org-level-2  ((t (:inherint outline-2 ))))
     (org-level-3  ((t (:inherint outline-3 ))))
     (org-level-4  ((t (:inherint outline-4 ))))
     (org-level-5  ((t (:inherint outline-5 ))))
     (org-level-6  ((t (:inherint outline-6 ))))
     (org-level-7  ((t (:inherint outline-7 ))))
     (org-level-8  ((t (:inherint outline-8 ))))
     (org-link ((t (:foreground ,my:h:cyan ))))
     ;; org-list-dt
     ;; org-macro
     ;; org-meta-line
     ;; org-mode-line-clock
     ;; org-mode-line-clock-overrun
     ;; org-priority
     ;; org-property-value
     ;; org-quote
     ;; org-scheduled
     ;; org-scheduled-previously
     ;; org-scheduled-today
     ;; org-sexp-date
     ;; org-special-keyword
     ;; org-table
     ;; org-tag
     ;; org-tag-group
     ;; org-target
     ;; org-time-grid
     ;; org-todo
     ;; org-upcoming-deadline
     ;; org-verbatim
     ;; org-verse
     ;; org-warning

     ;; ----------------------------------------------------------------------
     ;; Wanderlust
     ;; ----------------------------------------------------------------------
     (wl-highlight-folder-closed-face                  ((t (:foreground ,my:n:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-few-face                     ((t (:foreground ,my:n:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-killed-face                  ((t (:foreground ,my:h:black :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-many-face                    ((t (:foreground ,my:h:magenta :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-opened-face                  ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-path-face                    ((t (:underline t :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unknown-face                 ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-unread-face                  ((t (:foreground ,my:n:blue :bold nil :italic nil :weight normal ))))
     (wl-highlight-folder-zero-face                    ((t (:foreground ,my:h:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-message-citation-header             ((t (:foreground ,my:h:green :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-1                ((t (:foreground ,my:h:green :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-10               ((t (:foreground ,my:n:cyan :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-11               ((t (:foreground ,my:n:magenta :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-12               ((t (:foreground ,my:n:red :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-2                ((t (:foreground ,my:h:yellow :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-3                ((t (:foreground ,my:h:blue  :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-4                ((t (:foreground ,my:h:cyan :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-5                ((t (:foreground ,my:h:magenta :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-6                ((t (:foreground ,my:h:red :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-7                ((t (:foreground ,my:n:green :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-8                ((t (:foreground ,my:n:yellow :bold nil :italic nil ))))
     (wl-highlight-message-cited-text-9                ((t (:foreground ,my:n:blue :bold nil :italic nil ))))
     (wl-highlight-message-date-header-contents        ((t (:foreground ,my:n:green :bold t :italic nil ))))
     (wl-highlight-message-from-header-contents        ((t (:foreground ,my:n:yellow :bold t :italic nil ))))
     (wl-highlight-message-header-contents             ((t (:foreground ,my:n:white :bold nil :italic nil ))))
     (wl-highlight-message-headers                     ((t (:foreground ,my:n:cyan :bold t :italic nil ))))
     (wl-highlight-message-important-header-contents   ((t (:foreground ,my:n:magenta :bold t :italic nil ))))
     (wl-highlight-message-important-header-contents2  ((t (:foreground ,my:n:red :bold nil :italic nil ))))
     (wl-highlight-message-signature                   ((t (:foreground ,my:l:white :bold nil :italic nil ))))
     (wl-highlight-message-subject-header-contents     ((t (:foreground ,my:n:red :bold t :italic nil ))))
     (wl-highlight-message-unimportant-header-contents ((t (:foreground ,my:n:white :bold nil :italic nil ))))
     (wl-highlight-summary-answered-face               ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-copied-face                 ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-deleted-face                ((t (:foreground ,my:l:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-displaying-face             ((t (:underline t :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-disposed-face               ((t (:foreground ,my:n:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-flagged-face                ((t (:foreground ,my:h:yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-forwarded-face              ((t (:foreground ,my:h:blue :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-high-read-face              ((t (:foreground ,my:h:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-high-unread-face            ((t (:foreground ,my:h:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-face              ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-important-flag-face         ((t (:foreground ,my:n:yellow :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-killed-face                 ((t (:foreground ,my:l:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-l:read-face                 ((t (:foreground ,my:n:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-l:unread-face               ((t (:foreground ,my:h:lightblue :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-new-face                    ((t (:foreground ,my:n:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-normal-face                 ((t (:foreground ,my:h:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-prefetch-face               ((t (:foreground ,my:n:blue :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-refiled-face                ((t (:foreground ,my:n:green :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-resend-face                 ((t (:foreground ,my:h:orange :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-target-face                 ((t (:foreground ,my:n:cyan :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-temp-face                   ((t (:foreground ,my:n:violet :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-thread-top-face             ((t (:foreground ,my:h:white :bold nil :italic nil :weight normal ))))
     (wl-highlight-summary-unread-face                 ((t (:foreground ,my:n:red :bold nil :italic nil :weight normal ))))
     (wl-highlight-thread-indent-face                  ((t (:underline t :bold nil :italic nil :weight normal ))))

     ;; ----------------------------------------------------------------------
     ;; anything
     ;; ----------------------------------------------------------------------
     ;; anything-M-x-key-face
     ;; anything-apt-deinstalled
     ;; anything-apt-installed
     ;; anything-bmkext-file
     ;; anything-bmkext-gnus
     ;; anything-bmkext-info
     ;; anything-bmkext-man
     ;; anything-bmkext-no--file
     ;; anything-bmkext-w3m
     ;; anything-bookmarks-su-face
     ;; anything-buffer-not-saved
     ;; anything-buffer-saved-out
     ;; anything-candidate-number
     ;; anything-emms-playlist
     (anything-ff-directory ((t (:bold t :foreground ,my:h:lightblue :background nil))))
     (anything-ff-executable ((t (:bold t :foreground ,my:h:emerald ))))
     (anything-ff-file ((t (:bold t :foreground ,my:h:white :background nil))))
     (anything-ff-invalid-symlink ((t (:bold t :foreground ,my:h:red :background nil))))
     (anything-ff-prefix ((t (:bold nil))))
     (anything-ff-symlink ((t (:bold t :foreground ,my:h:cyan :background nil))))
     ;; anything-gentoo-match-face
     ;; anything-grep-file
     ;; anything-grep-finish
     ;; anything-grep-lineno
     ;; anything-grep-match
     ;; anything-grep-running
     ;; anything-header
     ;; anything-lisp-completion-info
     ;; anything-lisp-show-completion
     ;; anything-match
     ;; anything-overlay-line-face
     ;; anything-visible-mark
     ;; anything-w3m-bookmarks-face

     ;; ----------------------------------------------------------------------
     ;; auto-complete
     ;; ----------------------------------------------------------------------
     ;; ac-candidate-face
     ;; ac-candidate-mouse-face
     ;; ac-completion-face
     ;; ac-gtags-candidate-face
     ;; ac-gtags-selection-face
     ;; ac-selection-face
     ;; ac-yasnippet-candidate-face
     ;; ac-yasnippet-selection-face

     ;; ----------------------------------------------------------------------
     ;; ddskk
     ;; ----------------------------------------------------------------------
     ;; skk-dcomp-face
     ;; skk-dcomp-multiple-face
     ;; skk-dcomp-multiple-selected-face
     ;; skk-dcomp-multiple-trailing-face
     ;; skk-display-code-char-face
     ;; skk-display-code-prompt-face
     ;; skk-display-code-tankan-annotation-face
     ;; skk-display-code-tankan-radical-face
     ;; skk-henkan-face-default
     ;; skk-henkan-rest-indicator-face
     ;; skk-henkan-show-candidates-keys-face
     ;; skk-jisyo-registration-badge-face
     ;; skk-list-chars-face
     ;; skk-list-chars-table-header-face
     ;; skk-prefix-hiragana-face
     ;; skk-prefix-jisx0201-face
     ;; skk-prefix-katakana-face
     ;; skk-tankan-face
     ;; skk-tankan-radical-name-face
     ;; skk-treat-default
     ;; skk-tut-do-it-face
     ;; skk-tut-hint-face
     ;; skk-tut-key-bind-face
     ;; skk-tut-question-face
     ;; skk-tut-section-face
     ;; skk-verbose-intention-face
     ;; skk-verbose-kbd-face

     ;; ----------------------------------------------------------------------
     ;; zlc
     ;; ----------------------------------------------------------------------
     (zlc-selected-completion-face ((t (:inherit default :background ,my:h:black :bold t ))))

     ;; ----------------------------------------------------------------------
     ;; yaicomplete
     ;; ----------------------------------------------------------------------
     (yaicomplete-completion-suffix-face ((t (:foreground ,my:h:black ))))

     ;; ----------------------------------------------------------------------
     ;; tabbar
     ;; ----------------------------------------------------------------------
     (tabbar-default ((t (:background ,my:l:white :foreground ,my:h:white :height 1.0 ))))
     ;;   (tabbar-button ((t (:inherit tabbar-default :box nil ))))
     ;;   (tabbar-button-highlight ((t (:inherit tabbar-button ))))
     (tabbar-selected ((t (:inherit tabbar-default :foreground ,my:n:cyan :bold t :box nil ))))
     (tabbar-separator ((t (:inherit tabbar-default :background ,my:l:black ))))
     (tabbar-unselected ((t (:inherit tabbar-default :forground ,my:h:white :bold nil :box nil ))))
   )))

(provide 'color-theme-darkpastel)
;; Local Variables:
;; coding: utf-8-unix
;; after-save-hook: (lambda () (byte-compile-file (buffer-file-name)))
;; indent-tabs-mode: nil
;; End:
;;; template.el ends here
