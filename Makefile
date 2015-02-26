# encoding: utf-8
#
# Makefile for pymultimonaprs Cookbook.
#
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/pymultimonaprs/
#


# Global/env vars:

.DEFAULT_GOAL := install

BUNDLE_CMD ?= ~/.rbenv/shims/bundle

BUNDLE_EXEC ?= bundle exec

KNIFE_CONFIG ?= $(HOME)/.chef/knife.rb

COOKBOOK_NAME ?= pymultimonaprs


# Target groups:

test: install foodcritic kitchen_test

install: $(BUNDLE_CMD) bundle_install

clean: kitchen_destroy
	rm -rf build

release: bump_version git_push_tags berks_upload


# Bundler itself:

$(BUNDLE_CMD):
	gem install bundler

bundle_install: $(BUNDLE_CMD)
	bundle install


# Post bundler targets:

kitchen_converge:
	$(BUNDLE_EXEC) kitchen converge

kitchen_destroy:
	$(BUNDLE_EXEC) kitchen destroy

kitchen_verify:
	$(BUNDLE_EXEC) kitchen verify

kitchen_test:
	$(BUNDLE_EXEC) kitchen test

foodcritic:
	$(BUNDLE_EXEC) foodcritic .

bump_version:
	$(BUNDLE_EXEC) scmversion bump auto --default patch

berks_install: bundle_install
	$(BUNDLE_EXEC) berks install

berks_upload: berks_install
	$(BUNDLE_EXEC) berks upload

git_push_tags:
	git push origin --tags

# knife targets:

publish: build_path
	knife cookbook site share $(COOKBOOK_NAME) Networking -c $(KNIFE_CONFIG) -o build

# Work-around for the CI's checkout/workspace path:
build_path:
	mkdir -p build
	rsync --exclude=build/ -avr . build/$(COOKBOOK_NAME)
