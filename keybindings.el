;;; keybindings.el --- Minuet keybindings  -*- lexical-binding: nil; -*-
;;
;; Copyright (c) 2012-2025 Sylvain Benner & Contributors
;;
;; Author: Dietrich Daroch <Dietrich@Daroch.me>
;; URL: https://github.com/Dietr1ch/spacemacs-layer-minuet
;;
;; This file is not part of GNU Emacs.
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

(spacemacs/declare-prefix "$" "AI")
(spacemacs/declare-prefix "$m" "minuet")
(spacemacs/set-leader-keys
	"$mm" 'minuet-active-mode
	"$ms" 'minuet-show-suggestion
	"$mc" 'minuet-complete-with-minibuffer
	)

(define-key evil-insert-state-map (kbd "C-<return>") #'minuet-accept-suggestion)
(define-key evil-insert-state-map (kbd "C-DEL") #'minuet-dismiss-suggestion)
(define-key evil-insert-state-map (kbd "C-<tab>") #'minuet-next-suggestion)
(define-key evil-insert-state-map (kbd "C-<iso-lefttab>") #'minuet-previous-suggestion)
