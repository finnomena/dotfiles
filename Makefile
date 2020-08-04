BREW      := $(shell brew --version 2>/dev/null)
CLI_TOOLS := $(xcode-select --install 2>&1 | grep installed;)

install:
ifndef CLI_TOOLS
else
	xcode-select --install
endif

ifndef BREW
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
else
endif

brew bundle
