## First execute the dependent directories first
## Setup the variable with the dependent directories
## DEPENDENT_DIR = ./../lib
DEPENDENT_DIR = 
DEPENDENT_FILES := $(addsuffix /*.v,$(basename $(DEPENDENT_DIR)))

## Create a PHONY directory
.PHONY:: $(DEPENDENT_DIR)

## append to the all and clean targets
all clean :: $(DEPENDENT_DIR)

$(DEPENDENT_DIR) ::
        $(MAKE) --directory=$@ $(MAKECMDGOALS)

## Add the dependency for the top file
*.v:: $(DEPENDENT_FILES)

hp_filt.v:: dwn_sampler.v 

## After executing the dependent directo
include ${MK_INC_DIR}/Makefile.cg
