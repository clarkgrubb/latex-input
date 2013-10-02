MAKEFLAGS += --warn-undefined-variables
SHELL := /bin/bash
.SHELLFLAGS := -o pipefail
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:

data_dir := data
data_files := $(wildcard $(data_dir)/*)
targets := latex.el latex.cin

latex.el: $(data_files)
	./generate.rb --emacs-lisp-file=$@

latex.cin: $(data_files)
	./generate.rb --cin-file=$@

all: $(targets)

clean:
	rm $(targets)
