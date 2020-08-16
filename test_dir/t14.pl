use strict;
use warnings;
use v5.24;
use Cwd;
use File::Spec

say "The current working directory is ", getcwd();
my $foo = File::Spec->catfile(getcwd(), 'exercises');
say "$foo\n";
`cd $foo`;
`cd`;