use strict;
use warnings;

my @letters = qw( a b c d e f g h i j k l m n o p q r s t u v w y z );
my $base = "C:/Users/benjamin/Documents/python/tony";
chdir($base)
my @drs;

foreach $letter (@letters) {
	my $path = $base . 'rc_data_' . $letter . '.txt';
	open (FILE, '<', '$path');
	while (<FILE>) {
		chomp;
		if (/li class="altcolour"/) {
			m!<a href="biogs\/(.*?)htm"!; #matches the biography id
			my $biog_id = $1;
			
			s/\A<li class.*?htm">//; #Strip off pre stuff
			s!</a></li>/z!!;		 #Strip off post stuff
			
			m/
			(\w+),\s        	#surname
			(\w+\s)*			#firstnames
			\(\d*\s-\d*\),\s   	#year of birth - death
			(.*)				#type of surgeon
			/x;
			my ($surname, $firstnames, $dates, $type) = ($1, $2, $3, $4);
		}
	}
}