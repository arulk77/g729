DIR_LIST := ./hpf ./fifo

.PHONY:: $(DIR_LIST)

## Goes to all directories speicified and runs the make file 
all clean :: $(DIR_LIST)
	-rm -rf flist

## Cleare a file list for this directory
all :: 
	find ${PROJ_DIR}/design -type f -name "*.v" | grep -v ".cg" > flist

## Have the display dependencies in order 
$(DIR_LIST) ::
	$(MAKE) --directory=$@ $(MAKECMDGOALS) 
