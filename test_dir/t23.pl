use strict;
use warnings;

my @arr = (1, 2, 3, 4);
my @arr2;
push @arr2, \@arr;
push @arr2, 'hi';
push @arr2, 'ho';

print "@arr\n";
print "@arr2\n";
print "$arr2[0]\n";
print "$arr2[0]->[2]\n";
