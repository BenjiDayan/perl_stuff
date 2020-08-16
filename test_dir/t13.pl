use strict;
use warnings;
use File::Basename;
use File::Spec;

chomp(my $name = `echo %CD%`);
print $name, "\n";

my $basename = basename ($name);
print $basename, "\n";

my $dirname = dirname ($name);
print "$dirname\n";


my $new_name = File::Spec->catfile($dirname, $basename);

print $new_name, "\n";