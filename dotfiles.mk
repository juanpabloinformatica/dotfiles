.PHONY: config

# Functions
get_files_dot = $(shell find ${pwd}/$1 -mindepth 1 -maxdepth 1 '!' -path "*.git*")
get_files_user = $(addprefix $(shell echo "${1}"), $(foreach file,${2},$(shell basename ${file})))

#
pwd := $(shell pwd)
config_files_dot = $(call get_files_dot,config)
config_files_user := $(call get_files_user,${HOME}/.config/,${config_files_dot},)
home_files_dot := $(call get_files_dot,home)
home_files_user := $(call get_files_user,${HOME}/,${home_files_dot})
pictures_files_dot := $(call get_files_dot,pictures)
pictures_files_user := $(call get_files_user,${HOME}/Pictures/,${pictures_files_dot})

all: start

start: config home pictures

config: ${config_files_user}

home: ${home_files_user}

pictures: ${pictures_files_user}

# dotfiles-list:= config home pictures
$(foreach  cfu, ${config_files_user},$(eval ${cfu}: ; @ln -s "$$(filter %$${@F} ,$${config_files_dot})" $$@))
$(foreach  hfu, ${home_files_user},$(eval ${hfu}: ; @ln -s "$$(filter %$${@F} ,$${home_files_dot})" $$@))
$(foreach  pfu, ${pictures_files_user},$(eval ${pfu}: ; @ln -s "$$(filter %$${@F} ,$${pictures_files_dot})" $$@))

# $(foreach  pfu, ${pictures_files_user},$(eval ${pfu}:; @echo "$${filter %$${@F},$${pictures_files_dot}}" ;echo $$@))
#
# Including for testing
include ${pwd}/test.mk



