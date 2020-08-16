use strict;
use warnings;

my $pattern = 'abba';

while (<STDIN>){
	chomp;
	if (/$pattern/) {
		print "\tMatches\n";
	}
	else {
		print "\tDoesn't match\n";
	}
}