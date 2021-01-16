#!/usr/bin/perl

# participant information available
@firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
@lastnames = ("Williams", "King", "Beast", "Dwarf");

# let's assume we want to sort by last names, reverse alphabetically

# make new name list to be sorted
# initialize with empty list
@names = ();

$index = -1;
while($index++ < $#firstnames){
    # concatenate names as lastname firstname
    $names[$index] = $lastnames[$index].", ".$firstnames[$index];
}

# now sort them reverse alphabetically
  @names = reverse sort (@names);

print("Sorted reverse alphabetically by last name:\n");

foreach $name (@names){
  print("$name\n");
}
