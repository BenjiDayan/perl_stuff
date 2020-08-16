use 5.016;
use warnings;
use Data::Dumper;

# pass by ref; return by val

my $foo = "abc";

sub subr {
  my $local_foo = shift;            # see Note1, below
  my $local_deref = $$local_foo;
  say " In sub, \$local_deref: $local_deref";
  $local_deref .= " def";
  say "\t  And now, after cat, \$local_deref: $local_deref";
  return $local_deref;
}

my $fooref = \$foo;

my $result = subr($fooref);

say "\t\t Back in main, after subr has returned.";
say "\t\t $result";