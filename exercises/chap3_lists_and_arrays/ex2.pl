chomp(@numbers = <STDIN>);
@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

@output = ();
foreach $num (@numbers){
	push(@output, @names[$num]);
}

print "@output\n";
## Copyright (C) 2017 by Yours Truly
