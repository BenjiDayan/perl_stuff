use strict;
use warnings;

my $string = "This is a test";

sub find_subs {
	my $string = $_[0];
	my $sub = $_[1];
	my $count = -1;
	my @indices;
	while (1) {
		$count = index($string, $sub, $count + 1);
		last if $count == -1;
		push (@indices, $count);
	}
	@indices;
}

my @foo = find_subs($string, 'is');
print "@foo\n";