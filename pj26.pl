use strict;
use warnings;
use BenMath;
use v5.24;

# returns the number of consevutive primes produced by f(n) = n^2 + an + b
# searching for n = 0,1,2,3... (until f(n) isn't a prime)
sub num_consecutive_primes {
    my ($a, $b) = @_;
    
    #Takes in a value of n, returns BenMath::is_prime(f(n))
    my $check_prime_sub = sub {
        my $n = shift @_;
        return ( BenMath::is_prime( $n**2 + $a * $n + $b ) )
    };
    

    my $prime_count = 0;
    my $n = 0;
    while (1) {
        if ( $check_prime_sub->($n) ) { 
        $prime_count++ 
        }
        else {
            last;
        }
        $n++;
    }
    
    
    return($prime_count)
}

#Try all possible values a & b, storing max a & b & their num of consecutive primes
my $max_a;
my $max_b;
my $max_num_consec_primes = 0;
foreach my $a (-999...999) {
    foreach my $b (-1000..1000) {
        my $primes_found = num_consecutive_primes($a, $b);
        #print "\$a: $a, \$b: $b, $primes_found\n";
        if ($primes_found > $max_num_consec_primes) {
            ($max_a, $max_b, $max_num_consec_primes) = ($a, $b, $primes_found);
        }
    }
}

say "a: $max_a";
say "b: $max_b";
say "number of consecutive primes: $max_num_consec_primes";