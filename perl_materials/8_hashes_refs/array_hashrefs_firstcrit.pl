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

%subject3 = (
	     first_name => 'Ludo',
	     last_name => 'Beast',
	     age => 33,
	     native_language => 'Romanian',
	     performance_score => 35,
);

%subject4 = (
	     first_name => 'Hoggle',
	     last_name => 'Dwarf',
	     age => 43,
	     native_language => 'English',
	     performance_score => 75,
);

@subjects= (\%subject1, \%subject2, \%subject3, \%subject4);

# print group members & calculate average performance scores for each criterion
# ... when native language is English
print("Criterion: Native language is English\n");
calc_group_and_stats(1, \@subjects);

sub calc_group_and_stats{
  my ($criterion_num, $ref_subjects_array) = @_;

  foreach $subject_ref (@{$ref_subjects_array}){
    # check if subject satisfies criterion
    
    if(criterion_check($criterion_num, $subject_ref)){
      # if so, print subject information out 
      # and update counts needed for calculated average score of this group

    }
  }

}

sub criterion_check{
  my ($criterion_num, $subject_ref) = @_;

  if($criterion_num == 1){
    return ($subject_ref->{"native_language"} eq "English");
  }
}
