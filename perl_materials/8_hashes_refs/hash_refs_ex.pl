#!/usr/bin/perl

# subject information, represented with hashes
%subject1 = (
	     first_name => 'Sarah',
	     last_name => 'Williams',
	     age => 15,
	     native_language => 'English',
	     performance_score => 85,
);

%subject2 = (
	     first_name => 'Jareth',
	     last_name => 'King',
	     age => 39,
	     native_language => 'English',
	     performance_score => 99,
);

# first code block: call print_subject_info for each subject hash
# Un-comment this block to run it
#print("Subject1 information is:\n");
#print_subject_info(%subject1);
#print("Subject2 information is:\n");
#print_subject_info(%subject2);

# second code block: calling print_higher_score_1 with two hashes as arguments
# Un-comment this block to run it
#print_higher_score_1(%subject1, %subject2);
 # Uh oh!  This doesn't look right.

# third code block: passing multiple arrays seems to have the same problem with 
# not ending up with the subroutine arguments we expect
# Un-comment this block to run it
#@test_array1 = (1, 2, 3, 4, 5);
#@test_array2 = (6, 7, 8, 9, 10);
#add_arrays_together(@test_array1, @test_array2);

# fourth code block: creating references & dereferencing
# Un-comment this block to run it
# array examples
#@my_array = (1, 2, 3, 4, 5);
#$ref_to_my_array = \@my_array;
#print("reference to my_array (just a location in memory): $ref_to_my_array\n");
# and now we want to recover the information in the array, using curly brackets
#print_array_info(@{$ref_to_my_array});
# one way to get individual array elements from a reference
#$second_pos_array_value = ${$ref_to_my_array}[2];
#print("Dereference method 1: Element in position 2 is $second_pos_array_value. (Remember, arrays start at position 0.)\n");
# another way that's prettier 
#$second_pos_array_value = $ref_to_my_array->[2];
#print("Dereference method 2: Element in position 2 is $second_pos_array_value. (Remember, arrays start at position 0.)\n");
# hash examples
#$ref_to_subject1 = \%subject1;
#$ref_to_subject2 = \%subject2;
# now make a subroutine call using the references to our two hashes
#print_higher_score_2($ref_to_subject1, $ref_to_subject2);
# It works this way, too
#print_higher_score_2(\%subject1, \%subject2);
# one way to get individual hash elements from a reference
#$first_name_subj1 = ${$ref_to_subject1}{"first_name"};
#print("Dereference method 1: Subject 1's first name is $first_name_subj1\n");
# another way that's prettier
#$first_name_subj1 = $ref_to_subject1->{"first_name"};
#print("Dereference method 2: Subject 1's first name is $first_name_subj1\n");


#############
# subroutines #
#############

sub print_subject_info{
  my(%hash_to_print) = @_;

  while( ($key, $value) = each (%hash_to_print)){
    print("$key is $value\n");
  }
}

sub print_higher_score_1{
  my(%subject1, %subject2) = @_;

  # before trying anything, let's check and see what the subroutine thinks each hash contains
  print("in print_higher_score_1, \%subject1 looks like this:\n");
  print_subject_info(%subject1);
  print("in print_higher_score_1, \%subject2 looks like this:\n");
  print_subject_info(%subject2);

  # actual code would go here
}

sub print_higher_score_2{
  my($ref_to_subject1, $ref_to_subject2) = @_;

  # before trying anything, let's check and see what the subroutine thinks each hash contains
  print("in print_higher_score_2, \%subject1 looks like this:\n");
  print_subject_info(%{$ref_to_subject1});
  print("in print_higher_score_2, \%subject2 looks like this:\n");
  print_subject_info(%{$ref_to_subject2});

  # actual code would go here
}

sub print_array_info{
  my(@array_to_print) = @_;

  foreach $arr_val (@array_to_print){
    print("array value: $arr_val\n");
  }
}

sub add_arrays_together{
  my(@array1, @array2) = @_;

  # before trying anything, let's check and see what the subroutine thinks each hash contains
  print("in add_arrays_together, \@array1 looks like this:\n");
  print_array_info(@array1);
  print("in print_higher_score_1, \@array2 looks like this:\n");
  print_array_info(@array2);

  # actual code that adds arrays together would go here
}
