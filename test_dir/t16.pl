$perl = readlink 'C:\Users\benjamin\Documents' or die "Couldn't readlink: $!";
print "$perl\n";
print "Gobbledegook\n";