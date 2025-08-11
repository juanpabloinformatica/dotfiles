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
	docker run  --rm -it archlinux:latest /bin/bash -c  "pacman  -Syu --noconfirm && pacman  -Sy --noconfirm archlinux-keyring && pacman  -S --noconfirm  make nvim tmux git && git clone https://github.com/juanpabloinformatica/dotfiles.git && cd dotfiles && make -f dotfiles.mk start";
	
		
endif

