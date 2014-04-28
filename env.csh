#!/bin/csh

## Set the correct email id and user id for the git commit
git config user.email "aruls.dsp@gmail.com"
git config user.name "aruls"

## This script is to setup the environment for the project
setenv PROJ_DIR "${PWD}"
setenv CG_SEARCH_PATH "./:$PROJ_DIR/design"
setenv PATH "${PATH}:${PROJ_DIR}/bin"

## project specifi paths
alias cdp   "cd ${PROJ_DIR}"
alias cdm   "cd ${PROJ_DIR}/matlab"
alias cdd   "cd ${PROJ_DIR}/matlab/oop"
alias cds   "cd ${PROJ_DIR}/matlab/sim"
alias cddoc "cd ${PROJ_DIR}/docs"
alias cdb   "cd ${PROJ_DIR}/bin"

## Other paths
alias gvim 'gvim -c "set tags=vim.tags" '

## Alias for sourcing the tools
alias setmentor "source /u/tools/digital/setup/mentor"
alias setxil    "source /home/tools/Xilinx/14.7/ISE_DS/settings64.csh" 
alias setmat    "source /u/aruls/.user/matlab.csh" 
alias sett      "setxil; setmat; setmentor;"
