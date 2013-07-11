#!/usr/bin/perl

use Time::HiRes qw/ time sleep /;

my $sum;
my $sum2;
my $total = 0;
my $start = time;

for(my $i=1; $i<10000; $i++){
	$sum = 0;
	$sum2 = 0;
	for(my $j=1; $j<$i; $j++){	
		$sum += $j if $i % $j == 0;	
	}
	for(my $k=1; $k < $sum; $k++){
		$sum2 += $k if $sum % $k == 0;
	}
	if ($sum2 == $i && $i != $sum){
		print "$i - $sum\n";
		$total += $i;
	}
}
my $diff = time - $start;
print "Sum of all of the pairs is: $total\n";
print "Execution time: $diff\n";
