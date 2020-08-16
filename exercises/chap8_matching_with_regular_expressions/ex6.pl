use strict;
use warnings;

while (<>) {
	chomp;
	if (/\s\z/) {
		print "there was |$`<$&>$'|\n";
	}
}## Copyright (C) 2017 by Yours Truly
