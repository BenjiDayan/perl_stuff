$string = "Hello, world!";
substr($string, 0, 5) = "Goodbye"; #"Goodbye, world!"
print "$string\n";

substr($string, 9, 0) = "cruel ";
print "$string\n";