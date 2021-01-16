use strict;
use warnings;
use v5.24;

my @firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
my @lastnames = ("Williams", "King", "Beast", "Dwarf");

say "Sort by first or last name? (0/1)\n";
chomp (my $first_or_last = <STDIN>);
say "Sort alphabetically or reverse alphabetically? (0/1)\n";
chomp (my $alph_or_rev = <STDIN>);

my %hash;
@hash{$first_or_last ? @lastnames : @firstnames} 
    = $first_or_last ? @firstnames : @lastnames;
    
foreach ( (reverse ? $alph_or_rev :) sort @hash) {
    print @
}

