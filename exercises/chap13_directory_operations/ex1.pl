use strict;
use warnings;
use v5.24;

print "Enter directory name:";

chomp(my $input = <STDIN>);
chdir($input);

opendir DOT, "." or die "Can't opendir dot: $!";
foreach (sort readdir DOT) {
	print "$_\n";
}