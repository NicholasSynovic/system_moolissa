#!/bin/bash

source $HOME/.local/bin/sdkman/bin/sdkman-init.sh

sdk install java 21.0.5-tem
sdk install maven
sdk use java 21.0.5-tem
