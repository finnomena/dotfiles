BREW      := $(shell brew --version 2>/dev/null)
CLI_TOOLS := $(xcode-select --install 2>&1 | grep installed;)
ARCH := $(shell uname -m)

install:
ifndef CLI_TOOLS
else
	xcode-select --install
endif

ifndef BREW
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	if [ ${ARCH} == "arm64" ]; then \
		echo 'eval "$$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile; \
		eval "$$(/opt/homebrew/bin/brew shellenv)"; \
	fi
else
endif

brew bundle
