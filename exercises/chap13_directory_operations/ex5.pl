use strict;
use warnings;
use File::Basename;
use File::Spec;

my ($source, $dest) = @ARGV;
#If destination is a directory, not a file name in some directory, just move
#the whatever at source, with the same name, into this destination

#If $dest is a directory
if (-d $dest) {
	my $basename = basename($source); #the last thing in the complete name
	my $dest = File::Spec->catfile($dest, $basename); #C:/Users/benjamin, Documents
}

rename($source => $dest) or die "Couldn't rename $source to $dest : $!";