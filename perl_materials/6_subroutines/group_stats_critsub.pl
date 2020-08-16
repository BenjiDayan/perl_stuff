#!/usr/bin/perl

# participant information available
@firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
@lastnames = ("Williams", "King", "Beast", "Dwarf");
@ages = (15, 39, 33, 43);
@nativelanguages = ("English", "English", "Romanian", "English");
@performancescores = (85, 99, 35, 75);

# create list of complete user names
# initialize with empty list
@names = ();

$index = -1;
while($index++ < $#firstnames){
  # concatenate names as firstname lastname, age, native language, and performance
  $names[$index] = $firstnames[$index]." ".$lastnames[$index].", age = ".$ages[$index].", native language = ".$nativelanguages[$index].", performance = ".$performancescores[$index];
}

# print group members & calculate average performance scores for each criterion
# ... when native language is English
print("Criterion: Native language is English\n");
calc_group_and_stats(1);

sub calc_group_and_stats{
  my ($criterion_num) = @_;

  # initialize counts
  my $total_perf_score = 0;
  my $total_members = 0;
  
  # Note: it's somewhat naughty to access global variables from inside a subroutine, but we don't know
  # any way to pass multiple arrays yet, so it'll do.
  my $index = -1;
  while($index++ < $#names){    
    if(criterion_check($criterion_num, $index)){
      print("This participant belongs in this group: $names[$index]\n");
    }
  }
}

sub criterion_check{
  my ($criterion_num, $index) = @_;

  # Note: it's somewhat naughty to access global variables from inside a subroutine, but we don't know
  # any way to pass multiple arrays yet, so it'll do.
  if($criterion_num == 1){
    return ($nativelanguages[$index] eq "English");
  }
}
