FILES = src/main.vala \
		src/MainWindow.vala \
		src/Tweet.vala
LIBS = --pkg gio-2.0  --pkg gee-1.0 --pkg libsoup-2.4 --pkg rest-0.7 --pkg gtk+-3.0
NAME = Corebird
CC = clang
PARAMS = -X -O2 -X -Wno-incompatible-pointer-types -X -Wno-unused-value -g

all: compile

compile: $(FILES)
	valac --cc=$(CC) $(PARAMS) $(LIBS) $(FILES) -o $(NAME)
