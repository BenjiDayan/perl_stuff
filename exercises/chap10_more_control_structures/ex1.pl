use strict;
use warnings;
use v5.22;

my $num = int(1 + rand 100);

say "Guess a number between 1 and 100 inclusive";

while (1) {
	print "Enter number: ";
	chomp($_ = <STDIN>);
	if ($_ == $num) {
		say "Congratulations, it was $num";
		last;
	} elsif ($_ eq 'quit' or $_ eq 'exit' or $_ eq ''){
		last;
	} elsif ($_ < $num) {
		say "too low";
	} elsif ($_ > $num) {
		say "too high";
	}
	
}
