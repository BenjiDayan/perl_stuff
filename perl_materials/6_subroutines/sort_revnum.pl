#!/usr/bin/perl

# participant information available
@usernames = ("Sarah1", "Sarah2", "sarah3", "sArah4");
@scores = (10, 7, 42, 3);


# make new array @all_info containing all userinfo, with score first since we're sorting numerically
@all_info  = ();   
for($index = 0; $index <= $#usernames; $index++){
  $all_info[$index] = $scores[$index]."\t".$usernames[$index];
}

# sort them reverse numerically
print("Sorting reverse numerically, highest to lowest score\n");
@all_info = sort {$b <=> $a} (@all_info);

# now print out the results to STDOUT
foreach $user (@all_info){
  print("$user\n");
}
