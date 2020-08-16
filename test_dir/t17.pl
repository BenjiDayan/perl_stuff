use strict;
use warnings;

mkdir "test_dir";

chdir("test_dir");

foreach (qw ( hey hi you we go yay )) {
	open(my $foo, '>', $_);
	print $foo int(1 + rand(100));
}