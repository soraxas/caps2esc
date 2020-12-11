NAME=caps2esc
SRC=src/*.c

install: pkg

pkg: $(SRC) PKGBUILD
	makepkg -i --noextract

clean:
	rm -f src/$(NAME)
	rm -f $(NAME)-*.pkg.tar.xz
	rm -f -r pkg
