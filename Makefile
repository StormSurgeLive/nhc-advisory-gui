all:
	wxpar --verbose -o ./dist/nhc-explorer.exe -M JSON::PP -M HTTP::Tiny ./asgs-storm-bug.pl
