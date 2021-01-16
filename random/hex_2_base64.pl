use strict;
use warnings;
use MIME::Base64;
use Encode;

my $hex_string
    = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d';

my $foo = $hex_string =~ s/([a-fA-F0-9]{2})/chr(hex($1))/egr;


print $foo, "\n";
print encode_base64($foo), "\n";
print encode_base64('aabb'), "\n";
print encode_base64(5), "\n";

