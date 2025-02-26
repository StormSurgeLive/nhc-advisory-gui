all:
	wxpar --verbose -o ./dist/nhc-explorer.exe -M JSON::PP -M HTTP::Tiny -M IO::Socket::SSL -M Net::SSLEay ./asgs-storm-bug.pl -a
