use strict;
use warnings;


#TASK: For a given DNA sequence find its RNA transcript,
#find its reverse complement and check if
#the reverse complement contains a start codon

my $DNA = "GATTACACAT";
$DNA =~ s/[^ATGC]//; #Remove characters that aren't ATGC
print "DNA: $DNA\n";

#transcribe DNA to RNA - T changes to U;
(my $RNA =  $DNA) =~ s/T/U/g;
print "RNA: $RNA\n";


#find the reverse complement of $DNA;
my $rcDNA = reverse($DNA);
print "rcDNA: $rcDNA\n";
$rcDNA =~ tr/ATGC/TACG/d;
print "rcDNA: $rcDNA\n";


#start codon is ATG
if ($rcDNA =~ /ATG/) {
    print "Start codon found\n";
}
else {
    print "Start codon not found\n";
}



