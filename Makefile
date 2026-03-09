# -- BEGIN MAKEFILE --

CBIN    := "C:\sw\pdl\c\bin"
DIST    := dist
RELEASE := release
EXE     := C:\Users\user\Documents\wxPerl\nhc-advisory-gui\dist\nhc-explorer.exe

clean:
	@if exist $(DIST)* del /Q /F $(DIST)* 2>NUL
	@if exist $(RELEASE)* del /Q /F $(RELEASE)* 2>NUL

all: exe

exe: prepdirs
	wxpar -o $(EXE) --link $(CBIN)/libhdf5_hl-0__.dll  --link $(CBIN)/libsz-2__.dll  --link $(CBIN)/libiconv-2__.dll  --link $(CBIN)/libxml2-2__.dll  --link $(CBIN)/libcrypto-3-x64__.dll  --link $(CBIN)/libnetcdf-19__.dll  --link $(CBIN)/liblzma-5__.dll  --link $(CBIN)/libhdf5-0__.dll  --link $(CBIN)/libmfhdf__.dll  --link $(CBIN)/zlib1__.dll  --link $(CBIN)/libjpeg-9__.dll  --link $(CBIN)/libhdf__.dll  --link $(CBIN)/libssl-3-x64__.dll  C:/Users/user/Documents/wxPerl/nhc-advisory-gui/nhc-explorer.pl --gui
	@move /Y $(EXE) $(DIST)

prepdirs:
	@if not exist $(DIST) mkdir $(DIST)
	@if not exist $(RELEASE) mkdir $(RELEASE)
# -- END MAKEFILE --

