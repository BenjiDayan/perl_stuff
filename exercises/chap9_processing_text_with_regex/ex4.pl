use strict;
use warnings;

my $base = 'C:/Users/benjamin/Dropbox/perl/exercises';

chdir($base);

#For each line reported in C:/Users/benjamin/Dropbox/perl/exercises
foreach (split /\n/, `dir`) {
	#If this line contains chap, denoting a chapter entry
	if (/\b(chap\w*)\z/) {
		my $chapter = $base.'/'.($1);
		print "$chapter\n";
		chdir($chapter);
		
		#for line occuring in the chapter's folder
		foreach (split /\n/, `dir`) {
			if (/(ex\d\.pl)/) { #if it matches to an exercise
				open IN , '<', $chapter.'/'.$1.'.bak';
				open OUT, '>', $chapter.'/'.$1;
				while ( <IN> ){
					if (/}## Copyright (C) 2017 by Yours Truly/) {
						print OUT "}\n";
						print OUT "## Copyright (C) 2017 by Yours Truly";
					}
					else {
						print OUT;
					}
				}
			}
		}
	}
}
## Copyright (C) 2017 by Yours Truly
