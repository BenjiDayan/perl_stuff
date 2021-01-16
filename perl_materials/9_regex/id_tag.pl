#!/usr/bin/perl

$tag = "PL";

# some lines with properties like the lines we'll be looking for in the input file
@lines = ("63-PL", "that ’s right, at Halloween the children come knock on the door");

foreach $line (@lines){
  # look for a line that begins with a number, and is followed at some point by the tag of interest
  if($line =~ /^(\d+).*\-$tag/){
    print("This line contains the tag $tag: $line\n");
  }
}





