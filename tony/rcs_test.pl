use strict;
use warnings;

my @letters = qw( a b c d e f g h i j k l m n o p q r s t u v w y z );
my $base = "C:/Users/benjamin/Documents/python/tony";
chdir($base);
my @drs;

my $path = $base . '/rc_data_';
open (OUT, '>', "${base}/rcs_data.csv") or die "Couldn't open file: $!";

foreach my $letter (@letters){
	open (FILE, '<', $path.$letter.'.txt') or die "Couldn't open file: $!";
	while (<FILE>) {
		chomp;
		#print $_, "\n";
		if (/li class="altcolour"/) {
			m!<a href="biogs\/(.*?).htm"!; #matches the biography id
			my $biog_id = $1;
				
			s/\A<li class.*?htm">//; #Strip off pre stuff
			s!</a></li>!!;		 #Strip off post stuff
			print $_, "\n";
			
			my $foo = m/
			(.*),\s        	#surname
			(\w+\s)*			#firstnames
			\((\d*)\s-			#birth
			\s(\d*)\),\s   		#death
			(.*)				#type of surgeon
			/x;
			if ($foo) {
				#my ($surname, $firstnames, $birth, $death, $types) = ($1, $2, $3, $4, $5);
				my $data = join (',', ($biog_id, $1, $2, $3, $4, $5));
				print OUT $data;
			}
		}
	}
}