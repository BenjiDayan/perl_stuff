use 5.014;

my $greeting  = 'Hello, world!';

# be more elite
say $greeting =~ tr/aeiou/4310V/r;

# then run away
say $greeting =~ s/Hello/Goodbye/r;