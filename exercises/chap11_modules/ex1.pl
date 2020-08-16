use strict;
use warnings;
use Module::CoreList;

my %bar = ('hi', 'ho', 'hee', '1');
my $foo = $Module::CoreList::version{5.024};
print $foo, "\n";
print %bar, "\n";

my %modules = %{$Module::CoreList::version{5.024}};
print join "\n", keys %modules;