#!/usr/bin/perl

use Math::Complex;
use POSIX;
use Time::HiRes qw/ time sleep /;

$count = 1;	##Starting the count off at 1 to account for 2, which will be skipped in the loop
my $start = time;
for($i=3;$i<1000000;$i+=2){
	if(primeCheck($i) == 1){
		print "$i\n" if rotate($i) == 1;
		$count ++ if rotate($i) == 1;
	}
	## $count++ if primeCheck($i) == 1;
	##print "$i\n" if primeCheck($i) == 1;
}
my $diff = time - $start;
print "Rotateable prime $count\n";
print "Execution Time: $diff seconds\n";


sub primeCheck{
	my $c = $_[0];
	if($c % 2 == 0 && $c > 2){
		return 0;
	}
	for($j=3; $j<=ceil(sqrt($c)); $j+=2){
        if($c % $j==0){
			return 0;
        }
    }
		return 1;
}

sub rotate{
	my @orig = split(undef,$_[0]);
	my @mod = @orig;
	for($k=0;$k<scalar @orig-1;$k++){
		push(@mod, @mod[0]);	##Moving the first element to the last position
		shift(@mod);	##removing the first element
		my $pass = "@mod";	##Passing the char array back to be a string
		$pass =~ s/(.)\s/$1/seg;	##removing the spaces in the string
		$pass = int($pass);	##turning the string into an int
		return 0 if primeCheck($pass) == 0;	##checking primality
	}
	
	return 1;
}
