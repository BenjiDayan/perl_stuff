use strict;

my @arr = ('hi', 'ho', 'hee');

my $foo = @arr;
my ($bar) = @arr;

print @arr, "\n";
print $foo, "\n";
print $bar, "\n";

foreach (0..$#arr) {
	print $_, "\n";
}

print $#arr, "\n";