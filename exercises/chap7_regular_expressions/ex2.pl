use strict;
use warnings;

chomp(my @input = <>);

foreach (@input) {
	if (/[.]/){
		print $_, "\n";
	}
}## Copyright (C) 2017 by Yours Truly
