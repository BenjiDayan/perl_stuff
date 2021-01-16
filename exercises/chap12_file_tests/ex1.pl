use strict;
use warnings;
use v5.24;

1 ? say "hi" : say "ho";

my @arr = (1, 2, 3, 4);
print join(", ", @arr), "\n";

foreach (@ARGV) {
	test($_);
}

sub test {
	my $filename = $_[0];
	my @attributes;
	push @attributes, "readable" if -r $filename;
	push @attributes, "writable" if -w $filename;
	push @attributes, "executable" if -x $filename;
	print "file is ", join(" and ", @attributes) , "\n";
}