use strict;
use warnings;

foreach (@ARGV) {
	unlink($_);
}