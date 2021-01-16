#!/usr/bin/perl

# define default variables
$input_file = "names.txt";
$output_file;
$help; 

$help_message = "\n
This program sorts a list of names alphabetically from a user-specified file and outputs the results to a user-specified file.\n
\t--help or -h, displays this help message
\t--input_file [user-specified file], default = \"names.txt\"
\t--output_file [user-specified file], default = STDOUT

\tExample usage:
\tsort_names_from_file.pl --input_file \"names.txt\" --output_file \"names_sorted.txt\"\n";

use Getopt::Long;
$options_processed = 
  GetOptions("input_file:s" => \$input_file, #optional input file string name
	             "output_file:s" => \$output_file, #optional output file string name
	             "help|h" => \$help); # checks for either --help or -h options

if(!$options_processed){
  die("Oh no! - Problem processing command line options\n");
}else{
  # check if help has been requested
  if($help){ 
    # don't execute if help requested
    die("Help requested $help_message");
  }else{
    # let's print out what the options are that the program will be using
    print("Reading in names from $input_file\n");
    if(!$output_file){
      print("Printing out results to STDOUT\n");
    }else{
      print("Printing out results to $output_file\n");
    }

    # open appropriate input file to read in input
    open(INPUT, "$input_file") || die("Oh no! - Couldn't open $input_file\n");    
    
    # write code to read in names all at once here
    close(INPUT); # close input file

    # write code to sort our names ASCII-betically


    #open appropriate output file if requested
    if($output_file){
      # write code to open output file and print to it
    }else{
      # just print to regular STDOUT
      print(@names);
    }   
  }
}
