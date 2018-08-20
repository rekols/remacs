(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))

(add-subdirs-to-load-path "~/remacs/lisp")
(add-subdirs-to-load-path "~/remacs/extensions")
(add-subdirs-to-load-path "~/remacs/themes")

(require 'dark-theme)
(require 'basic-toolkit)
(require 'move-text)
(require 'eqf)

(require 'init-auto-complete)
(require 'init-line-numbers)
(require 'init-yasnippet)
(require 'init-mode-line)
(require 'init-startup)
(require 'init-paredit)
(require 'init-tabbar)
(require 'init-moccur)
(require 'init-shell)
(require 'init-ide)
(require 'init-indent)
(require 'init-smex)
(require 'init-dired)
(require 'init-key)
(require 'init-eaf)
(require 'init-lsp)

(provide 'loader)
