=pod
This seems to be incorrect syntax for module exporting.
See testpm2.pm for working version.
=cut

package Benji::testpm;
use strict;
use warnings;

use parent 'Exporter';  # inherit from Exporter
our @EXPORT_OK = qw/ qwerty asdf /;  # list all subs which you want to export upon request

print "OMG\n";

sub qwerty {
    my ($a, $b) = @_;
    return($a + $b);
}

sub asdf {
    my ($a, $b) = @_;
    return($a * $b);
}

1; #End of Benjii::testpm