;;; other-window-previous-mode.el --- Global minor-mode defining `other-window' backwards
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.edu>
;; Version: 1.0.1
;; Keywords: convenience
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/EricCrosson/other-window-previous-mode
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Provides a minor-mode defining `other-window' backwards as "C-x O"
;; (capital O).

;;; Code:


(defun other-window-previous ()
  "Invoke `other-window' backwards."
  (interactive)
  (other-window -1))


;;;###autoload
(define-minor-mode other-window-previous-mode
  "Toggle Other Window Previous mode.
This mode provides a binding to invoke `other-window' backwards."
  :init-value nil
  :lighter nil
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-x O") 'other-window-previous)
            map)
  :global t
  :group 'other-window-previous-mode
  :require 'other-window-previous-mode)

(provide 'other-window-previous-mode)

;;; other-window-previous-mode.el ends here
