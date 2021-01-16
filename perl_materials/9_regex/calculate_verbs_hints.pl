#!/usr/bin/perl

## assumes input of the format

#*** File "adam01.cha": line 95. Keyword: v|get 
#*MOT:	get over ( .) Mommy .
#%mor:	v|get adv:loc|over n:prop|Mommy . 
#----------------------------------------
#*** File "adam01.cha": line 195. Keywords: v|want, v|play 
#*URS:	do you want to play with them ?
#%mor:	aux|do pro|you v|want inf|to v|play prep|with pro|them ? 
#----------------------------------------

# like what's found in the output of CLAN files

# Goal 1: How often does the verb "want" appear?

$input_file = "adam-verbs.adult";

open(IN, "$input_file") || die("Couldn't find $input_file\n");
@input_lines = <IN>;
close(IN);

# initialize to 0
$want_verb_counts = 0;

foreach $inline (@input_lines){
  # Note: The line below won't work perfectly, because sometimes the verb is used more than once in an utterance
  #if($inline =~ /Keywords?:.+\|want[,| ]/){
  # Instead, you'll want to extract the verb list and then process it appropriately
  if($inline =~ /Keywords?: (v\|.+)$/){
    # now pull out each verb (you'll want to implement the get_verbs function)
    my @verbs_in_line = get_verbs($1);

    # then you'll want to process each of the verbs in @verb_in_line to see how many of them are "want"
    foreach my $verb (@verbs_in_line){
      # put in "want" recognition here
      }
    }
  }
}
print("The number of times want appears: $want_verb_counts\n");


# Goal 2: How many times does an utterance contain more than one verb?
# Easy way: look for "Keywords" vs. "Keyword"

# initialize to 0
$multiple_verb_counts = 0;

foreach $inline (@input_lines){
  # Use a regular expression that will only pull out instances of "Keywords" lines, instead of just "Keyword" lines.
  # then update multiple_verb_counts
}
print("The number of times more than one verb appears: $multiple_verb_counts\n");


# Goal 3: How many different verbs are used, and how many times are they used each?  Print out
# in numerically descending order.
# Useful: A hash to hold the verbs observed so far.

# initialize hash
%verbs = ();

foreach $inline (@input_lines){
  # read each line to identify which verbs are being identified
  if($inline =~ /Keywords?: (v\|.+)$/){
    # Note: May be more than one verb, so need to split out the information appropriately
    # You can use the same get_verbs function as before
    my  @verbs_in_line = get_verbs($1);

  # update verbs hash with appropriate verb and count
    foreach my $verb (@verbs_in_line){
      # Note: If the verb doesn't exist yet, it will be automatically initialized with value 0
    }
  }
}

# print out results, sorted reverse numerically
# one way to do this is to create a special sort function, using the spaceship operator (<=>)

print("Verbs appearing in $input_file, sorted in descending order of frequency\n");
# You can use a foreach loop, with the sort function below used on the keys of %verbs

sub verbs_descending{
  $verbs{$b} <=> $verbs{$a};
}


sub get_verbs{
  # assumes it's being passed just the verbs after the Keyword(s)
  my ($verb_list) = @_;
  
  # initialize list of verbs
  my @verb_list = ();
  my @new_verb_list = ();

  # split up $verb_list into @verb_list based on v|

  foreach my $verb (@verb_list){
    # remove comma (,) for when there are multiple entries

    # remove extraneous spaces
  

    # check to make sure non-empty - add to verb_list if so
    # You'll probably find the push command helpful

  }
  return @new_verb_list;
}
