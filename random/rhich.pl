use strict;
use warnings;

#print %ENV{path}, "\n";
my $separator = $Config{path_sep};
my @path = split(/$separator/, $ENV{path});

sub rhich {
	my $search = shift;
	
}