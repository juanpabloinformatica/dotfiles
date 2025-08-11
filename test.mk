ifneq ( , $(shell which vagrant))
ifneq ( , $(shell which virtualbox))
# define inline_script
# endef

test-vm: 
	vagrant init ogarcia/archlinux-x64 --box-version 2023.12.01
	# sed -E '/config.vm.box_version/a'
endif
endif
ifneq ( , $(shell which docker))
test-docker:
	docker run  -it archlinux:latest /bin/bash -c  "pacman  -Syu --noconfirm && pacman  -Sy --noconfirm archlinux-keyring && pacman  -S --noconfirm  which xdg-user-dirs make nvim tmux git && xdg-user-dirs-update && git clone https://github.com/juanpabloinformatica/dotfiles.git $$HOME/Documents/dotfiles && cd $$HOME/Documents/dotfiles && make -f dotfiles.mk start && /bin/bash";
endif

