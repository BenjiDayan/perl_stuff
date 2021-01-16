use strict;
use warnings;

my $result;

$_ = 'lothlorien';
m/  (?{ $i = 0 })
    (.  (?{ $i++})  )*
    lori
    (?{$result = $i})
/x;