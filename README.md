# Moolissa System Setup

> Scripts to setup my Moolissa System

## About

This reposiotry contains the source code and scripts to setup my primary
workstation, Moolissa. Setup scripts are primarily written as Ansible plays.

Moolissa is an x86-64 machine, and the Ansible scripts are currently **not**
flexible enough to accomodate other system architectures.

**NOTE**: This repository only contains code to *install* software. Software configurations are stored within [`NicholasSynovic/tool_dotfiles`](https://github.com/NicholasSynovic/tool_dotfiles).

## How To Run

Assuming that you have `git cloned` the repsoitory:

1. `make aptUpdate`
1. `make installAnsible`
1. `make testAnsible`
1. `make runAnsible`
