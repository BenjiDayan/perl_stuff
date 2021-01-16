#!/usr/bin/perl

$count = 0; # used to count letters

$word = "supercalifragilisticexpialidocious"; # scalar variable

# quick way to grab each character in a string
foreach $letter(split(//, $word)){ 
  $count++; # auto-increment the counter
  if($count % 2 == 0){ # check if counter has the right index value
    print("$count: $letter\n"); # if so, print out counter & letter
  }
}
