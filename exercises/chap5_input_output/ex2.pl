use strict;
use warnings;
use v5.24;

print "Enter strings\n";

#my @strings = (<STDIN>);


#prints a ruler of length length, 123...90123...90123....
sub print_ruler {
	my $length = @_[0];
	my $count = 1;
	while ($count <= $length){
		print(mod($count, 10)); #prints $count mod 10
	}
}

sub mod {
	my ($input, $modulus_base) = (@_[0], @_[1]);
	my $temp = $input / $modulus_base;
	say $temp;
	my $temp2 = $modulus_base * ($temp - int($temp));
	say $temp2;
	$temp2;
}

#print "\n";

#foreach my $string (@strings){
#	printf("%21s", $string);
#}

my $foo = mod(4, 3);
say "foo is $foo";
say "foo inted is ", int($foo);

## Copyright (C) 2017 by Yours Truly
