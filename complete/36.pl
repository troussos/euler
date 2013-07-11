#!/usr/bin/perl

$total = 0;

for($i=0;$i<1000000;$i++){
	$binary = sprintf "%b",$i;
	if($binary == reverse $binary){
		$decimal = sprintf "%d", $i;
		if($decimal == reverse $decimal){
			$total += $i;
		}
	}	
}

print "Total of all palidromic numbers is base 2 and 10 less than 1000000 is: $total\n\n";
