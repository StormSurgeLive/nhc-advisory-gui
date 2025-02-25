all:
	wxpar --verbose -o ./dist/nhc-explorer.exe -M JSON::PP -M HTTP::Tiny -M IO::Socket::SSL ./asgs-storm-bug.pl -a
