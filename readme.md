# other-window-previous-mode [![Build Status](https://travis-ci.org/EricCrosson/other-window-previous-mode.svg?branch=master)](https://travis-ci.org/EricCrosson/other-window-previous-mode) [![Version](https://img.shields.io/github/tag/EricCrosson/other-window-previous-mode.svg)](https://github.com/EricCrosson/other-window-previous-mode/releases)

> GNU Emacs `other-window` backwards

This package provides the `other-window-previous-mode` minor-mode,
which includes a single function (`other-window-previous`) and binds
it to `C-x O` (that's capital `o`).

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package other-window-previous-mode
  :quelpa (other-window-previous-mode
           :fetcher github
           :repo "EricCrosson/other-window-previous-mode")
  :config (other-window-previous-mode 1))
```

> Note: this project is not destined for [melpa](https://melpa.org)

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'other-window-previous-mode)
(other-window-previous-mode 1)
```

## Example

![Example](https://raw.githubusercontent.com/EricCrosson/other-window-previous-mode/master/img/demo.gif)

## Acknowledgements

This package is a modular implementation of a
[Prelude feature](http://emacsredux.com/blog/2013/03/30/go-back-to-previous-window/).

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
