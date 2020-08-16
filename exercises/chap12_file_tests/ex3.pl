use strict;
use warnings;
use v5.24;

foreach (@ARGV) {
	if (-r -w -O $_) {
		print "is readable, writable and owned by me!\n";
	}
}