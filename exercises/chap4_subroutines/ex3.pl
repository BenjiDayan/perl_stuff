use strict;

sub average {
	my $sum;
	foreach (@_){
		$sum += $_;
	}
	$sum/@_; #returns undef if no arguments given
}

sub above_average {
	my $average = average(@_);
	my @output;
	my $count = 0;
	foreach (@_){
		if ($_ > $average){
			$output[$count] = $_;
			$count += 1;
		}
	}
	@output;
}


my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";## Copyright (C) 2017 by Yours Truly
