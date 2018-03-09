;;; lsp-crystal.el --- Crystal support for lsp-mode

;; Copyright (C) 2018 Brantou

;; Author: Brantou <brantou89@gmail.com>
;; URL: https://github.com/brantou/lsp-crystal.el
;; Keywords: languages crystal
;; Version:  0.1.0
;; Package-Requires: ((crystal-mode "0.1.0") (lsp-mode "4.0"))

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A lsp-mode client that provides Crystal code-completion and other IDE
;; features for Emacs. It's backed by scry.

;; To use it, add the code below to your .emacs file:
;;
;;    (with-eval-after-load 'lsp-mode
;;      (require 'lsp-crystal)
;;      (add-hook 'crystal-mode-hook (lambda ()
;;                                  (lsp-crystal-enable)
;;                                  (setq-local lsp-enable-eldoc nil))))

;;; Code:

(require 'lsp-mode)
(require 'crystal-mode)

(lsp-define-stdio-client lsp-crystal "crystal"
                         #'crystal-find-project-root
                         '("scry"))

(provide 'lsp-crystal)
;;; lsp-crystal.el ends here
