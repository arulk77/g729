#!/bin/csh

##---------------------------------------------------------
## Global project directory
##---------------------------------------------------------
setenv PROJ_DIR "${PWD}"

##---------------------------------------------------------
## This script is to setup the environment for the project
##---------------------------------------------------------
setenv CG_SEARCH_PATH "./:$PROJ_DIR/design/sync:$PROJ_DIR/design/sync"

## Perl script path 
setenv PATH "${PATH}:${PROJ_DIR}/bin"
setenv MK_INC_DIR "${PROJ_DIR}/make"
setenv HDR_DIR "${PROJ_DIR}/make"

##---------------------------------------------------------
## project specifi paths
##---------------------------------------------------------
alias cdp   "cd ${PROJ_DIR}"
alias cdd   "cd ${PROJ_DIR}/design"
alias cds   "cd ${PROJ_DIR}/sim"
alias cdsyn "cd ${PROJ_DIR}/syn"
alias cddoc "cd ${PROJ_DIR}/docs"

## Other paths
alias gvim 'gvim -c "set tags=vim.tags" '
