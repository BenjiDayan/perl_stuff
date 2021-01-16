use strict;
use warnings;
use Statistics;
use v5.24;

my @data = ( 5, 22, 4, 13 );
my @data2 = ( 11, 10, 12 );
my $avg = average(\@data);

say "\$avg: $avg";