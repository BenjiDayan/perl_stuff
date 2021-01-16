#!/usr/bin/perl

# Supposed to say if user's guess is less than,
# greater than, or equal to the program's hidden
# number.  If user's guess is the right number,
# program outputs "You win!".  
# Otherwise, it keeps looping, while asking
# the user to try again.

# variables used by the program
$magic_number = 13;
$quitting_signal = 'n';
$opening_message = "Guess what my magic number is!\n";
$guessing_message = "What's your guess? Type $quitting_signal to quit. ";
$winning_message = "That's right!  You win.\n";
$low_message = "Too low! ";
$high_message = "Too high! ";
$end_message = "Thanks for playing!\n";

# opening sequence
print($opening_message);
print($guessing_message);

# get user input, removing newline
chomp($guess = <STDIN>);

# original signal for no more guessing
$done_guessing = ($guess eq $quitting_signal); 

# intiial boolean value to track if user has guessed number
# don't really need to initialize it, but it's good programming
# practice
$guessed_number = "false";

# keep doing this until user is done guessing
while(not $done_guessing){
  # check if user's guess is equal to the magic number
  if($guess == $magic_number){
    # if so, make the guessed_number variable true
    $guessed_number = "true";
    # print the winning message
    print($winning_message);

    # else, check if the guess is too low
  }elsif($guess < $magic_number){
    # if so, print the too low message
    print($low_message);
    
    # else, the guess must be too high
  }else{
    # print the too high message
    print($high_message);
  }

  # check to see if the user guessed the number
  if($guessed_number ne "true"){
    # if not, loop through the guessing message and
    # get the user's input, removing the newline
    print($guessing_message);
    chomp($guess = <STDIN>);
  }

  # the new done_guessing condition is that 
  # the user has entered the quitting signal or
  # the user has guessed the number
  $done_guessing = ($guess eq $quitting_signal) || ($guessed_number eq "true"); 
}

# print the final message out to the user
print($end_message);
