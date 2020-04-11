# My ACME tool chest

This is a collection of small utilities I use together with Rob Pike's
ACME editor.

Against Plan9 custom, the utilities are mostly Bash scripts and not
`rc`. That's mostly because I'm more comfortable with Bash than `rc`.

## `Adefaults`
This tool watches ACME's log file for new windows and adds a few commands
I often use to their tag lines:

* Git directories: `Gci`
* Files ending in `.go`: `Lfmt Ldef Lrefs`
* `go.mod` files: `Lws+`
* Git commit messages and markdown files: `|fmt`

It also adds `|I- |I+` to all regular files' tags.

## `Gci` and `Gpush`
These are very simple wrappers around `git commit --interactive` and
`git push` that use a `win` window for interaction. They are probably
the start of some more fancy integration of Git. I'm not too sure on
that yet though.

## `I+` and `I-`
These indent and dedent text. Indentation is a tab character. Dedent
supports tabs and blanks. These are intended to behave similar to Vi's
`<` and `>` commands.

## `Z+` and `Z-`
Zoom the current ACME window in (`Z+`) or out (`Z-`).

## `start-acme.sh`
This is the script that I use to start Acme. It starts `plumber`,
`fontsrv`, `acme-lsp`, a completion binding handler and `Adefaults`. It
also runs Acme with the primary font set to `GoMono` and the secondary
font set to `GoRegular`.

## `install.sh`
This script symlinks all of the above scripts to `$HOME/bin`.