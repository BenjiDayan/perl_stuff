use strict;
use warnings;

my @arr = (1,2,3,'hi','ho');

for my $element (@arr){
	print $element, ' ';
}

print "\n";

map {print} @arr;
print "\n";

#my $cwd = `dir`;
#print $cwd, "\n";

my %mehash = ('apple', 'red', 'banana', 'yellow', 'orange', 'orange', 'pear', 'green');

print %mehash,  "\n";

for my $key (keys %mehash){
	print $key, ': ', $mehash{$key}, "\n";
}

my $foo = $mehash{apple};
print $foo, "\n";


my $hash_ref = \%mehash;
print $hash_ref->{banana}, "\n";

print $hash_ref->{$_} for keys %$hash_ref;

