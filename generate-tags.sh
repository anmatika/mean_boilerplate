#!/bin/bash
ctags -R -V --exclude=node_modules --exclude=bower_components --exclude=.tmp --exclude=.vagrant --exclude=server/dist .
