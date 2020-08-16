use strict;
use warnings;

my $i = 5;
dunno();

foreach my $i (1..3) {    #my vs our
    print "\$i: $i\n";
    dunno();
}

print "Outside \$i: $i\n";
dunno();

sub dunno {
    print "sub: \$i: $i\n";
}