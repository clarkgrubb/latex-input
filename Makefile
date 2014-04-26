MAKEFLAGS += --warn-undefined-variables
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:

data_dir := data
data_files := $(wildcard $(data_dir)/*)
targets := latex.el latex.cin latex.txt stats.txt

latex.el: $(data_files)
	./generate.rb --emacs-lisp-file=$@

latex.cin: $(data_files)
	./generate.rb --cin-file=$@

latex.txt: $(data_files)
	./generate.rb --ibus-file=$@

stats.txt: $(data_files)
	./generate.rb --stats-file=$@

.PHONY: all
all: $(targets)

.PHONY: clean
clean:
	rm $(targets)
