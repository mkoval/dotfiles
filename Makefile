CP=cp
RM=rm -f
MKDIR=mkdir
VIM_CONFIG_PATH=$(HOME)/.vim
TARGETS=$(HOME)/.vimrc $(HOME)/.config/pianobar
GENERATED=$(VIM_CONFIG_PATH)

.PHONY: all clean
.SECONDARY:

all: $(TARGETS)

clean:
	rm -rf $(TARGETS) $(GENERATED)

$(HOME)/.%: %
	cp -r $< $@

$(VIM_CONFIG_PATH)/bundle/vundle:
	mkdir -p $(dir $@)
	git clone https://github.com/gmarik/vundle.git $@

# Install vundle to manage vim packages.
$(HOME)/.vimrc: vimrc $(VIM_CONFIG_PATH)/bundle/vundle
	cp -r $< $@
	vim +BundleInstall +qall
