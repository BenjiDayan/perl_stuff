use strict;
use warnings;

foreach my $key (sort keys %ENV) {
	printf "%20s : %30s\n", $key, $ENV{$key};
}## Copyright (C) 2017 by Yours Truly
