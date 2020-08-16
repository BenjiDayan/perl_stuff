use v5.24;
use strict;

sub greet {
	state @previous_names; #the last person's name, undef if first person
	my $name = @_[0]; #argument, person's name
	
	unless (@previous_names){
		print "Hi $name! You're the first person here\n";
	}else {
		print "Hi $name! I've seen @previous_names\n";
	}
	
	push @previous_names, $name;
}

greet ( "Fred" );
greet ( "Barney" );
greet ( "Wilma" );
greet("Betty");## Copyright (C) 2017 by Yours Truly
