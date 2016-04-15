;;; hjson-mode.el --- Major mode for editing Hjson files  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Chunyang Xu

;; Author: Chunyang Xu <xuchunyang.me@gmail.com>
;; Keywords: json

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; hjson-mode is a major-mode for editing Hjson files.
;;
;; Hjson stands for "Human JSON", its homepage is at http://hjson.org/

;;; Code:

(defvar hjson-mode-syntax-table
  (let ((table (make-syntax-table)))
    ;; Comments
    (modify-syntax-entry ?# "<" table)
    (modify-syntax-entry ?\n ">" table)
    (modify-syntax-entry ?/ ". 124" table)
    (modify-syntax-entry ?* ". 23b" table)
    ;; String
    (modify-syntax-entry ?\' "\"" table)
    (modify-syntax-entry ?\" "\"" table)
    table)
  "Syntax table used in `hjson-mode'.")

;;;###autoload
(define-derived-mode hjson-mode prog-mode "Hjson"
  "Major mode for editing Hjson code."
  (set (make-local-variable 'comment-start) "# "))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.hjson\\'" . hjson-mode) t)

(provide 'hjson-mode)
;;; hjson-mode.el ends here
