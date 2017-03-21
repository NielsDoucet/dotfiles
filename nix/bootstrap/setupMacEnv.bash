#!/bin/sh
. setupHomebrew.bash

# copy bash profile files
cp ../.bash_profile ~
cp ../.bashrc ~
cp -r ../bash_alias.d ~/bash_alias.d
cp -r ../bash_completion.d ~/bash_completion.d
cp -r ../bash_prompt.d ~/bash_prompt.d

source ~/.bashrc
