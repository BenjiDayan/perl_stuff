#!/usr/bin/perl

# open up inputfile.txt for reading
open(INPUTFILE, "inputfile.txt");

# read the lines in all at once
@inputlines = <INPUTFILE>;

# close the inputfile after we're done reading it
close(INPUTFILE);

$num_lines = $#inputlines + 1;

print("There are $num_lines lines in inputfile.txt.\n");
