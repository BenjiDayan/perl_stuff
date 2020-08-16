use strict;
use warnings;
use List::Util;

my $num = 1;
my @results = (1);
foreach my $x (1..500) {
    my $diff = 2 * $x;
    foreach (1..4) {
        $num += $diff;
        push @results, $num;
    }
}

print List::Util::sum(@results), "\n";