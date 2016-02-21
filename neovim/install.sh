#!/usr/bin/env bash
# The neovim package is installed with brew.
# This is an unfortunate workaround required for making vim style navigations,
# specificaly C-h, work in nvim. See:
# https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
#
# Enabling this makes the navs break in tmux when the screen-256colors is
# enabled there, so tmux config also set back to xterm-256colors. Everything
# seems to still be working.
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $HOME/$TERM.ti
tic $HOME/$TERM.ti
