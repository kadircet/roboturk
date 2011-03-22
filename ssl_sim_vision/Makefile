OSTYPE ?= $(shell uname)

ifeq ($(OSTYPE),linux)
OSTYPE=Linux
endif

ifneq ($(findstring MINGW,$(OSTYPE)),)
OSTYPE=Windows
endif

ifeq ($(OSTYPE),msys)
OSTYPE=Windows
endif

ifeq ($(OSTYPE),Window)
ROSMAKE=echo 'ROS controllers are not supported under Windows'
endif

ifeq ($(OSTYPE),Darwin)
ROSMAKE=echo 'ROS controllers not compiled under Mac OS X'
endif

ifeq ($(OSTYPE),Linux)
ROSMAKE=rosmake
endif

compil: ssl_sim_vision

ssl_sim_vision: src/main.cpp
	@cp Makefile Makefile.backup
	@cp Makefile.ros Makefile
	@-$(ROSMAKE)
	@mv Makefile.backup Makefile
	@cp bin/ssl_sim_vision ../ssl_sim/controllers/ssl_sim_vision/ssl_sim_vision
#	@rm -rf bin build

clean:
	@rm -rf bin build ssl_sim_vision

