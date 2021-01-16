#!/usr/bin/perl

# list of first names
@firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
# list of last names
@lastnames = ("Williams", "King", "Beast", "Dwarf");

$index = 0; # counter for index in list
while($index <= $#firstnames){ # checking to see if at end of list
  $first = $firstnames[$index]; # get first name at current index
  $last = $lastnames[$index]; # get equivalent last name
  # probably want to add something here
  $index++; # auto-increment the index
}
