#!/usr/bin/perl

# hash of subject performance

%subject_performance = (
		       Sarah => 85,
		       Jareth => 99,
		       Ludo => 35,
		       Hoggle => 75,
		     );

# printing out the information alphabetical by subject name
print("Information, in alphebetical order by name:\n");
foreach $name (sort(keys (%subject_performance))){
  $performance = $subject_performance{$name};
  print("$name: $performance\n");
}

