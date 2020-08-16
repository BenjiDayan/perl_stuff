use strict;
use warnings;
use Scalar::Util qw( refaddr );
use v5.24;

my $foo = 'hi';
my @foo = (1, 2, 3);
my %foo = (23 => "hi", 3 => "ho", 55 => "hee",);

my $bar = \$foo;
say $bar;
say refaddr($bar);
say oct("0x2530350");




