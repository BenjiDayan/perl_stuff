package Statistics;

use strict;
require Exporter;
our @ISA = ("Exporter");
our @EXPORT = qw(average min_max);  # export by default
our @EXPORT_OK = qw(variance);      # export on request

=begin comment

Find the average of an array, passed by
reference.  If the array is empty,
return zero.

=end comment

=cut

sub average
{
    my $array_ref = shift;
    my $sum = 0;
    my $result = 0;
    my $n = scalar @{$array_ref};
    my $item;
    foreach $item (@{$array_ref})
    {
        $sum += $item;
    }
    if ($n > 0)
    {
        $result = $sum / $n;
    }
    return $result;
}

=begin comment

Calculate the maximum and minimum values of a set of
numbers passed as an array reference.

If there are zero numbers, return zero for both maximum and
minimum.

=end comment

=cut

sub min_max
{
    my $array_ref = shift;
    my $n = scalar @{$array_ref};
    my $min;
    my $max;
    my $item;
    if ($n == 0)
    {
            $min = $max = 0;
    }
    else
    {
        $min = $max = ${$array_ref}[0];
        foreach $item (@{$array_ref})
        {
            $min = $item if ($item < $min);
            $max = $item if ($item > $max);
        }
    }
    return ($min, $max);
}

=begin comment

Calculate the variance of a set of numbers
with n items passed as an array reference.

Algorithm: 
    Calculate the sum of all the numbers (sum)
    Calculate the sum of the squares of the numbers (sum_sq)
    Variance is (n * sum_sq - (sum**2)) / (n * (n-1) )

    If n <= 1, return zero.

=end comment

=cut

sub variance
{
    my $array_ref = shift;
    my $n = scalar(@{$array_ref});
    my $result = 0;
    my $item;
    my $sum = 0;
    my $sum_sq = 0;
    my $n = scalar @{$array_ref};
    foreach $item (@{$array_ref})
    {
        $sum += $item;
        $sum_sq += $item*$item;
    }
    if ($n > 1)
    {
        $result = (($n * $sum_sq) - $sum**2)/($n*($n-1));
    }

    return $result;
}

1;