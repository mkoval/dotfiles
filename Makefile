CP=cp
RM=rm -f
GIT=git
MKDIR=mkdir
VIM_CONFIG_PATH=$(HOME)/.vim
TARGETS=$(HOME)/.vimrc
GENERATED=$(VIM_CONFIG_PATH)

.PHONY: all clean
.SECONDARY:

all: $(TARGETS)

clean:
	$(RM) $(TARGETS)
	$(RM) -r $(GENERATED)

$(HOME)/.vimrc: vimrc $(VIM_CONFIG_PATH)/bundle/vundle
	$(CP) $< $@

$(VIM_CONFIG_PATH)/bundle/vundle:
	$(MKDIR) -p $(dir $@)
	$(GIT) clone https://github.com/gmarik/vundle.git $@
