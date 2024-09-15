#!/usr/bin/env just --justfile

HOME_NIX := "~/.config/home-manager/"

_list:
    @just --list

verify:
	@home-manager build -f nix/home.nix

# Apply current configuration
apply:
    @cp -rf nix/* {{ HOME_NIX }}
    @nix-channel --update
    @home-manager switch

# Backup current home configuration
backup:
    @cp -rf {{ HOME_NIX }} nix/

# Format source
format:
    @nixfmt .
    @nixfmt {{ HOME_NIX }}

add-nix-program NAME:
	#! /usr/bin/env bash

	cat <<EOT >> nix/program/{{ NAME }}.nix
	{ config, pkgs, ... }:

	{

	  home.packages = with pkgs; [
	    {{ NAME }} #
	  ];

	  programs.{{ NAME }} = {
	    enable = true;

	  };

	}

	EOT
	just format
