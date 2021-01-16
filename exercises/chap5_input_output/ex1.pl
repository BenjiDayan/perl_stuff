use strict;
use warnings;

#cat file1.txt file2.txt file3.txt sequentially writes the contents of these files to standard output

#tac does the same, but starts from the last line of the last file argument.

#chomp(my $foo = <ARGV>);
#print $foo, "\n"; #This prints the first line of the first file given to ARGV

#while (<ARGV>){
#	print STDOUT $_; #STDOUT unecessary, as is \n
#}

print(reverse(<>));## Copyright (C) 2017 by Yours Truly
