use strict;
use warnings;

my %books;
$books{'fred'} = 3;
$books{'wilma'} = 1;
$books{'steve'} = 0;
$books{'joe'} = undef;


my $someone = 'joe';
 
while ( my ($key, $value) = each %books){
	print "$key has $value books out\n";
}

my $foo = $books{'rando'};
print "$foo\n";