use strict;
use warnings;

print "Hello World.\n";

my $scal_var = 'hizoa';
my $nother = 42;

my @is_array = (1, 2, 666);
my @foo = ($scal_var, $nother, 'ruh roh');

print @foo, "\n";

#print @is_array, "\n";
print 'more', '\n';
print 'and more', "\n";

print "here be some things: @is_array\n";

print @is_array, "\n";
print "@is_array\n";

print "\n\n\n";

my %f = (
	apple => "red",
	banana => "yellow"
);

print %f, "\n";

my $fruits = ["apple", "banana"];
my $colors = {apple => "red", banana => "yellow"};

my $fs = %f;
my $ar = @is_array;

print $fruits, ';', $colors, "\n";
print $fs, ' ; ', $ar, "\n";