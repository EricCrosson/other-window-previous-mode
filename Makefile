test:
	emacs --version
	emacs -nw --batch --eval '(load-file "other-window-previous-mode.el")'
