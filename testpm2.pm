
package testpm2;
use strict;
use warnings;

use vars qw(@ISA @EXPORT);
use Exporter;
@ISA    = qw(Exporter);
@EXPORT = qw( benadd bentimes );

sub benadd {
    my ($a, $b) = @_;
    return ($a + $b);
}
sub bentimes {
    my ($a, $b) = @_;
    return ($a * $b);
}

1;