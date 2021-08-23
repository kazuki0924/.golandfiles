SHELL := bash
.ONESHELL:
.DELETE_ON_ERROR:
.SHELLFLAGS := -euo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
.RECIPEPREFIX = >

all: setup

symlink:
> @ ln -sfnv "$$HOME/.golandfiles/.ideavimrc" "$$HOME/.ideavimrc"

.PHONY: symlink

setup: symlink

.PHONY: setup
