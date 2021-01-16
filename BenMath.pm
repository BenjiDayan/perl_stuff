package BenMath;
use strict;
use warnings;
use POSIX qw/ceil/;

require Exporter;
our @ISA = ("Exporter");
our @EXPORT = qw();  # export by default
our @EXPORT_OK = qw();      # export on request

#Takes one integer, returns 1 if prime, 0 if not, undef if given no number.
sub is_prime {
    my $num = shift @_;
    
    # Take care of special cases
    if ( !defined $num) { return(undef) }
    if ($num <= 1) { return(0) }
    if ($num != int($num)) { return(0) }
    if ($num == 2) { return(1) }
    
    # Check all potential divisors to see if they exactly divide $num
    my $search_limit = ceil(sqrt($num));
    my $is_prime_trigger = 1;               # True until proven false
    foreach (2..$search_limit) {
        if ($num % $_ == 0) {
            $is_prime_trigger = 0;
            last;
        }
    }
    
    return($is_prime_trigger);
}


1;