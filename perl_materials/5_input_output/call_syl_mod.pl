#!/usr/bin/perl

#sample words
@words = ('pirate', 'abracadabra', 'penguin');

# do some syllable countings with the Syllable.pm module
use Lingua::EN::Syllable;
   
foreach $word (@words){
  $num_syls = syllable($word);
  print("$word: $num_syls syllable(s)\n");
}
  

