use strict;
use warnings;
use v5.24;

my $foo = 'foo';
say $foo;
{
    my $foo = 'asdf';
    say $foo;
}
say $foo;