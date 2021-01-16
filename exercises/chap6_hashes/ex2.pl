use strict;
use warnings;
use v5.24;

say "Enter words";

chomp(my @words = (<STDIN>));
my %occurences;
foreach my $word (@words){
	$occurences{$word} += 1;
}

foreach my $key (keys %occurences) {
	print $key, "occurs $occurences{$key} times\n";
}## Copyright (C) 2017 by Yours Truly
