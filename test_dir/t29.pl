print "More code!";

=pod
=head1 SERIOUS DOCUMENTATION
    Heyzo!
    wassup!

=head1 YEAH!

=cut

use strict;
use warnings;

my $string = "I mention perl a \nbunch of perly times \n yeah perl perl yeah";

if (my @count = $string =~ m/perl/g) {
    print "@count\n";
}

my $alphabet = "abcdefghijklmnopqrstuvwxyz";
$alphabet =~ /(hi).*(stu)/;

print "The entire match began at $-[0] and ended at $+[0]\n";
print "The first match began at $-[1] and ended at $+[1]\n";
print "The second match began at $-[2] and ended at $+[2]\n";


    sdfa
    