package Productivity::log_access;
use strict;
use warnings;

use vars qw( @ISA @EXPORT );
use Exporter;
@ISA    = qw( Exporter );
@EXPORT = qw( write_log test_sub );

#Purpose    :   provide functions for standard writing to and reading from log
#           :   standardizes input for writing to a good form

# open FH for productivity log


open (my $log_fh, '>>', "productivity_log");
 
# for writing comments to the log e.g. "Did good today"
sub write_log {
    chomp(my $input = $_[0]);
    
    #beautify input
    $input =~ s/^\s+|\s+$//g;
    
    print $log_fh $input, "\n";
}

sub test_sub {
    print "TESTING!\n";
}


1; #End Productivity::log_access