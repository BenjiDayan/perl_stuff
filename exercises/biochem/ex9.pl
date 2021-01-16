use strict;
use warnings;

#TASK: Make a subroutine that calculates the reverse
#complement of a DNA sequence and call it from the main program

sub reverse_complement {
    my $rDNA = reverse $_[0];
    $rDNA =~ tr/ATCG/TAGC/;
    return $rDNA;
}