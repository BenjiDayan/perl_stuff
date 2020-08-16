use strict;
use warnings;

my $dir_name = 'C:/Users/benjamin/Documents';
opendir(my $dir, $dir_name) or die "Couldn't open dir: $!";

foreach my $file (readdir $dir) {
	print "one file in $dir_name is $file\n";
}
closedir $dir;