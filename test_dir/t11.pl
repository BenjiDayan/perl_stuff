$_ = "fred  \t \t  barney";

if (/fred( +|\t+)barney/) {
	print "it matched!\n";
}
else {
	print "it didn't match!\n";
}