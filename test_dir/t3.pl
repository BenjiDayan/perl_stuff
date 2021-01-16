use strict;
use warnings;

open(my $out, ">", "output.txt") or die "Cannot open output.txt $!";

print $out "huzzah\n";

my $x = 'foofie pho fum';

print $x, "\n";

if ($x =~ /foo/) {print "foo detected\n"};

$x =~ s/foo/bar/;

print $x, "\n";