all:
	wxpar --verbose -o ./dist/nhc-explorer.exe --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf5_hl-0__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/zlib1__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf5-0__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libjpeg-9__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libmfhdf__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libnetcdf-19__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libiconv-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libxml2-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libsz-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libcrypto-3-x64__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libssl-3-x64__.dll ./nhc-explorer.pl --gui
	wxpar --verbose -o ./dist/DEBUG-nhc-explorer.exe --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf5_hl-0__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/zlib1__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf5-0__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libjpeg-9__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libmfhdf__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libnetcdf-19__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libiconv-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libhdf__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libxml2-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libsz-2__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libcrypto-3-x64__.dll --link c:/strawberry-perl-5.40.0.1-64bit-pdl/c/bin/libssl-3-x64__.dll ./nhc-explorer.pl


# Note: good example of a the command required to package an EXE for Windows
# when using HTTP::Tiny and https addresses

# It was an adventure finding all the dependencies related to the wxpar command,
# particularly those around what was needed, the basic process entailed:
# 1. use wxpar, which generates an options files with all the Wx DLLs 
# 2. installed, App::PP::Autolink,App::PP::Autolink which provides the utility "pp_autolink"; this
#    utility scans the .pl file you're packing (in this case, "nhc-explorer.pl,")
#    for DLLs - lo' and behold, it found the ones I needed; in particular the critical
#    one that was not getting picked up by pp or wxpar, "libcrypto-3-x64___.dll!" 
# 3. ran the "wxpar" command above
# 4. tested in a non-Strawberry Perl window (MSYS2 terminal) using the command,
#
#    PERL_DL_DEBUG=5 dist/nhc-explorer.exe
#
# I learned about this command while searching, here:
#
#   https://stackoverflow.com/questions/423330/why-cant-dynaloader-pm-load-ssleay-dll-for-netssleay-and-cryptssleay  #(per, "rurban")
