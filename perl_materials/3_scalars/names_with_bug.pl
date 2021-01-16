#!/usr/bin/perl

# list of first names
@firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
# list of last names
@lastnames = ("Williams", "King", "Beast", "Dwarf");

$index = 0; # counter for index in list
while($index++ <= $#firstnames){ # autoincrement and end-of-list check
  $first = $firstnames[$index]; # get first name at current index
  $last = $lastnames[$index]; # get equivalent last name
  print("$first $last\t");
}

print("\n");
