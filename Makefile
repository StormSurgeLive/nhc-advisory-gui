all:
	wxpar --verbose -o ./dist/nhc-explorer.exe -l c:/strawberry/c/bin/libcrypto-3-x64__.dll -l c:/strawberry/c/bin/zlib1__.dll -l c:/strawberry/c/bin/libssl-3-x64__.dll ./asgs-storm-bug.pl 

# Note: good example of a the command required to package an EXE for Windows
# when using HTTP::Tiny and https addresses

# It was an adventure finding all the dependencies related to the wxpar command,
# particularly those around what was needed, the basic process entailed:
# 1. use wxpar, which generates an options files with all the Wx DLLs 
# 2. installed, App::PP::Autolink, which provides the utility "pp_autolink"; this
#    utility scans the .pl file you're packing (in this case, "asgs-storm-bug.pl,")
#    for DLLs - lo' and behold, it found the ones I needed; in particular the critical
#    one that was not getting picked up by pp or wxpar, "libcrypto-3-x64___.dll!" 
# 3. ran the "wxpar" command above
