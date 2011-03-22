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

compil: demo_controller

demo_controller: src/main.cpp
	@cp Makefile Makefile.backup
	@cp Makefile.ros Makefile
	@-$(ROSMAKE)
	@mv Makefile.backup Makefile
	@cp bin/demo_controller ../ssl_sim/controllers/demo_controller/demo_controller #This is where my controllers are, that's why the copy of the binary is created there.
#	@rm -rf bin build

clean:
	@rm -rf bin build demo_controller
