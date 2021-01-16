use strict;
use warnings;

open (FOO, '>', 'ten_to_the_5_numbers');
foreach (1..1e5) {
    print FOO rand(100), "\n";
}