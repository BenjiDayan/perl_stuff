use strict;
use warnings;

print @ARGV, "\n";
print $ARGV[0], "\n";

#Takes in an input file, reads it and prints all the lines that mention fred.
chomp(my @input = <>);


foreach (@input) {
	if (/[fF]red/){
		print $_, "\n";
	}
}## Copyright (C) 2017 by Yours Truly
