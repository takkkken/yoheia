(if (boundp 'window-system)
    (setq initial-frame-alist
          (append (list
                   '(foreground-color . "azure3") ;; ��������
                   '(background-color . "black") ;; �w�i�͍�
                   '(border-color     . "black")
                   '(mouse-color      . "white")
                   '(cursor-color     . "white")
                   '(cursor-type      . box)
                   '(menu-bar-lines . 1)
                   ;;15.2 �t�H���g�̐ݒ� (2008/04/16) �Őݒ肵���t�H���g���g�p
                   ;'(font . "my-fontset")
                   ;; ���_�Ȃ� shinonome16-fontset �Ȃǂ��w��
                   '(vertical-scroll-bars . nil) ;;�X�N���[���o�[�͂���Ȃ�
                   '(width . 100) ;; �E�B���h�E��
                   '(height . 35) ;; �E�B���h�E�̍���
                   '(top . 60) ;;�\���ʒu
                   '(left . 140) ;;�\���ʒu
                   )
                  initial-frame-alist)))
(setq default-frame-alist initial-frame-alist)

(modify-all-frames-parameters (list (cons 'alpha '(80 70 50 30))))

(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)

;; ���[�h�p�X
(setq load-path (cons "~/emacs/site-lisp" load-path))

;; Twitter
(require 'twittering-mode)
(setq twittering-username "yoheia")

;; Telnet
(setq telnet-program "c:/meadow3/bin/telnet.exe")
(add-hook 'telnet-mode-hook '_telnet-mode)
(defun _telnet-mode ()
  (set-buffer-process-coding-system 'euc-japan 'sjis-unix))

;; �S�p�X�y�[�X���u���v�Ƃ��ĕ\������B
(require 'jaspace)

;;Cygwin
(setq explicit-shell-file-name "bash.exe")
(setq shell-file-name "sh.exe")
(setq shell-command-switch "-c")
(modify-coding-system-alist 'process ".*sh\\.exe" '(undecided-dos . euc-japan))
;; argument-editing �̐ݒ�
(require 'mw32script)
(mw32script-init)
(setq exec-suffix-list '(".exe" ".sh" ".pl"))
(setq shell-file-name-chars "~/A-Za-z0-9_^$!#%&{}@`'.:()-")

