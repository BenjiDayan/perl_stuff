use strict;
use warnings;
package DNA_tools 1;

#TASK: Make a subroutine that calculates the reverse
#complement of a DNA sequence and call it from the main program
use Exporter qw(import);
 
our @EXPORT_OK = qw(add multiply);

sub reverse_complement {
    my $rDNA = reverse $_[0];
    $rDNA =~ tr/ATCG/TAGC/;
    return $rDNA;
}

1;