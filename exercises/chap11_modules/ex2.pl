use strict;
use warnings;
use Time::Moment;

my $dt = Time::Moment->now;
printf "%4d/%02d/%02d\n", $dt->year, $dt->month, $dt->day_of_month;

printf "%d:%d:%d\n", $dt->hour, $dt->minute, $dt->second;

my $dt2 = Time::Moment->new(
	year	=> chomp(<STDIN>)
	month	=> chomp(<STDIN>)
	day		=> chomp(<STDIN>)
);

my ($year_d, $month_d, $day_d) = (	$dt->delta_years($dt2), 
									$dt->delta_months($dt2),
									$dt->delta_days($dt2)	);
									
									
printf "%d years and %d months and %d days\n", $year_d, $month_d, $day