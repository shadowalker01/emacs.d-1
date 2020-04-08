;;; init-multi-term.el --- multi term configuration
;;; Commentary:
;;; Code:
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(setq system-uses-terminfo nil)

(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-<left>" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-<right>" . multi-term-next))))

(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(provide 'init-multi-term)
;;; init-multi-term.el ends here
