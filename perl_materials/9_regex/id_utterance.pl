#!/usr/bin/perl

## looks for lines like this:
##/~*
##Right. Well what happens to your work then?  
##*~/
##
## and outputs them to the designated output file one at a time, with a number on the line preceding them:

## 1
## Right. Well what happens to your work then? 

# some sample lines that have the same properties as the lines we're looking for
@lines = ("/~*", "Right. Well what happens to your work then?", "*~/");

foreach $line (@lines){
  if($line =~ /^\/\~\*/){
    print("found beginning marker for utterance: $line\n");
  }
}







