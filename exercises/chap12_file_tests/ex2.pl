use strict;
use warnings;

my ($oldest_filename, $oldest_age);
foreach (@ARGV) {
	if (-M $_ > $oldest_age) {
		($oldest_filename, $oldest_age) = ($_, -M _);
	}
}

if (defined($oldest_filename)) { 
	print "$oldest_filename : $oldest_age";
}