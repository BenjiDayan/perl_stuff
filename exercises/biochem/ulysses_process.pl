use strict;
use warnings;
use v5.24;

open (IN, '<', 'Ulysses.txt');
my @lines = <IN>;
my $content = join('', @lines);
$content =~ s/.\n.//g; #replace meek linebreaks

my @stuff = ($content =~ m/(.{40}\b\d{4}\b.{40})/sg);

foreach (@stuff) {
    say;
}