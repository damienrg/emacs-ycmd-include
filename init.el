(defconst config-directory (file-name-directory (or load-file-name buffer-file-name)))
(defconst ycmd-path (expand-file-name "3rdparty/ycmd/ycmd" config-directory))

(require 'ycmd)
(require 'company-ycmd)


(setq ycmd-global-config (expand-file-name ".ycm_extra_conf.py" config-directory))
(setq ycmd-server-command (list "python" ycmd-path))

(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'ycmd-mode)

(setq company-backends '(company-ycmd))
