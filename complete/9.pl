#!/usr/bin/perl

use Math::Complex;

	$a = 1;
	$b = 1;
	$c = 1;

	for($a = 1; $a < 900; $a++){
		$A = $a * $a;
	#	print("A = $a");
		for($b = 1; $b < 900; $b++){
			$B = $b * $b;
			$C = $A + $B;
			$c = sqrt($C);
			$t = $a + $b + $c;
		#	print("T = $t\n");
			if($t == 1000){
				$s = $a*$b*$c;
				print("$s\n");
				break;
				break;
			}
			
		}
	}
