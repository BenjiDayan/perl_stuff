use strict;
use warnings;

my $what = 'fred|barney';

while (<>) {
	chomp;
	if (/($what){3}/) {
		print "Matches: |$`<$&>$'|\n";
	}
	else {
		print "No match: |$_|\n";
	}
}## Copyright (C) 2017 by Yours Truly
