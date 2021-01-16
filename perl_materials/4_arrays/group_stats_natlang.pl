#!/usr/bin/perl

# participant information available
@firstnames = ("Sarah", "Jareth", "Ludo", "Hoggle");
@lastnames = ("Williams", "King", "Beast", "Dwarf");
@ages = (15, 39, 33, 43);
@nativelanguages = ("English", "English", "Romanian", "English");
@performancescores = (85, 99, 35, 75);

# create list of complete user names & other user information
# initialize with empty list
@names = ();

$index = -1;
while($index++ < $#firstnames){
  # concatenate names as firstname lastname, age, native language, and performance
  $names[$index] = $firstnames[$index]." ".$lastnames[$index].", age = ".$ages[$index].", native language = ".$nativelanguages[$index].", performance = ".$performancescores[$index];
}

# calculate average performance scores

# initialize counts
$total_perf_score = 0;
$total_members = 0;

# ... when native language is English
print("Criterion: Native language is English\n");
$index = -1;
while($index++ < $#names){
  if($nativelanguages[$index] eq "English"){
    # print member info
    print("$names[$index]\n");
    $total_perf_score += $performancescores[$index];
    $total_members++;
  }
}
$avg_perf = $total_perf_score/$total_members;
# Note: the printf function allows you to specify the format of a variable's output
# %.2f = floating point number with 2 places after the decimal point
printf("Average performance of this group: %.2f\n\n", $avg_perf);



