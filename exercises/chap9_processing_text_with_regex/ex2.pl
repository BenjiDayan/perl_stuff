use strict;
use warnings;


foreach (@ARGV) {
	print $_, "\n";
	open (OUTPUT, '>',$_ =~ s/[.].*/.out/r);
	open (INPUT, '<', $_);
	while (<INPUT>){
		s/Fred/Wilma/ig;
		s/Wilma/Fred/ig;
		print OUTPUT;
	}
}## Copyright (C) 2017 by Yours Truly
