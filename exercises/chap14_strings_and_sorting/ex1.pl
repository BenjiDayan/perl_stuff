use strict;
use warnings;

my @data = (17, 1000, 04, 1.50, 3.14159, -10, 1.5, 4, 2001, 90210, 666);

print "@data\n";
my @data2 = sort {$a <=> $b} @data;
print "@data2\n";