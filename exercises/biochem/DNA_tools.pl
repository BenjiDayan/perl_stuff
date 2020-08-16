
use strict;
use warnings;

#TASK: Read DNA sequences from ‘DNAseq’ input file – 
#there is one sequence per line
#For each sequence find the reverse complement and 
#print it to ‘DNAseqRC’ output file

open(my $DNA_fh, '<', 'DNAseq');
open(OUT, '>', 'DNAseqRC');

while (my $sequence = <$DNA_fh>){
    chomp($sequence);
    my $revcomp = reverse_complement(uc $sequence);
    print OUT $revcomp, "\n";
}



sub reverse_complement {
    my $rDNA = reverse $_[0];
    $rDNA =~ tr/ATCG/TAGC/;
    return $rDNA;
}

1;