use strict;
use warnings;

chomp(my @input = <>);

foreach (@input) {
	if (/\b([a-zA-Z]*[A-Z]+[a-z]+[a-zA-z]*)\b/) {
		print $_, "\n";
	}
}## Copyright (C) 2017 by Yours Truly
