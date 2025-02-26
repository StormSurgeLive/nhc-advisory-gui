all:
	wxpar --verbose -o ./dist/nhc-explorer.exe -M JSON::PP -M HTTP::Tiny -M IO::Socket::SSL -M Net::SSLEay -l C:/STRAWB~1/perl/site/lib/auto/Net/SSLeay/SSLeay.xs.dll -l C:/STRAWB~1/perl/vendor/lib/auto/Crypt/SSLeay/SSLeay.xs.dll -l C:/STRAWB~1/perl/vendor/lib/auto/Net/SSLeay/SSLeay.xs.dll ./asgs-storm-bug.pl 
