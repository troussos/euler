#!/usr/bin/perl

$iterations = 0;
$biggest = 0;

$titerations = 0;

	for($j=1; $j<1000000; $j++){
		$titerations = 0;
		$i = $j;
		while($i != 1){
			if($i % 2){
				$i = (3 * $i) + 1;
			}
			else{
				$i /= 2;
			}
			$titerations++;
		}
		#print("$j\n");
		if($titerations > $iterations){
			$biggest = $j;
			$iterations = $titerations;
			print("$biggest\n");
		}
	}
