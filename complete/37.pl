#!/usr/bin/perl
use Math::Complex;
use POSIX;
$total = 0;
$count = 0;

print "Check for truncatable primes from: ";
$o = <>;
print "to: ";
$e = <>;

for($i=$o; $i<=$e; $i++){
	if($i % 5000 == 0){print "* - $i\n";}
	if(primeCheck($i) == 1){
		if(checkRight($i) == 1){
			if(checkLeft($i) == 1){
				print "$i \n";
				$total += $i;
				$count++;
			}
		}
		
	}
}

print "$count primes summed to $total\n";


sub primeCheck{
	my $c = $_[0];
##print "C: $c\n";
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

sub checkRight{
	my $num = sprintf("%d",$_[0]);
	chop($num);
	$num = int($num);
##print "Number: $num\n";
	if($num > 1){
		if(primeCheck($num) == 1){
			if($num < 10){
				return 1;
			}
			else{
				checkRight($num);
			}
		}
		else{
			return 0;
		}
	}
	else{
		return 0;
	}
}

sub checkLeft{
	my $num = reverse sprintf("%d",$_[0]);
	chop($num);
	$num = reverse $num;
	$num = int($num);
##print "Number: $num\n";
	if($num > 1){
		if(primeCheck($num) == 1){
			if($num < 10){
				return 1;
			}
			else{
				checkLeft($num);
			}
		}
		else{
			return 0;
		}
	}
	else{
		return 0;
	}
}
