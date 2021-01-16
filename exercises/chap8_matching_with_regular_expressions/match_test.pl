use strict;
use warnings;

chomp(my $pattern = <>);

while (<>) {           # take one input line at a time
  chomp;
  if (/$pattern/) {
    print "Matched: |$`<$&>$'|\n";  # the special match vars
  } else {
    print "No match: |$_|\n";
  }
}