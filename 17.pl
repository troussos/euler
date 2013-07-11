#!/usr/bin/perl

	$count = 0;

	for($i=1;$i<1000;$i++){
		$temp = $i;
		$word = 0;

		if($temp > 99){
			$word += 7;		## if the number is over 100, add 'hundred' (7)
			$stemp = sprintf("%d", $temp);
			$word += Single(substr($stemp,0,1));
			$temp -= (int(substr($stemp,0,1)) * 100);
			if($temp != 0){
				$word += 3;	## Adding the 'and' if it is needed
			}			
		}

		print ("Temp = $temp\n");
		
		if($temp > 19){
			$stemp = sprintf("%d", $temp);
			$word += Double(substr($stemp,0,1));
		#	print("Temp = $temp\n");
			$temp -= (int(substr($stemp,0,1))*10);
		#	print("Temp = $temp\n");

		}

		print ("Temp = $temp\n");

		if($temp > 9){
			$stemp = sprintf("%d", $temp);
			$word += Teen(substr($stemp,1,1));
			$temp = 0;
		}

		print ("Temp = $temp\n");

		if($temp > 0){
			$stemp = sprintf("%d", $temp);
			$word += Single(substr($stemp,0,1));
		}
		$count += $word;
		print "$i = $word\n";
		print "Count = $count\n\n";
}
	$count += 11;
	print("Result: $count\n");
#Be sure to add eleven to the final number for 'one thousand'
		
sub Single {
	#Subroutine to process single numbers and starts of hundreds
	my $val = 0;
	my ($w) = @_;
	
	$val = 3 if $w == 1 || $w == 2 || $w == 6;
	$val = 5 if $w == 3 || $w == 7 || $w == 8;
	$val = 4 if $w == 4 || $w == 5 || $w == 9;

	return $val;
}

sub Double {
	#Subroutine to process double (twenty, thirty, etc.) numbers
	my $val = 0;
	my ($w) = @_;

	$val = 3 if $w == 1;
	$val = 6 if $w == 2 || $w == 3 || $w == 8 || $w == 9;
	$val = 5 if $w == 4 || $w == 5 || $w == 6;
	$val = 7 if $w == 7;
	
	return $val;
}

sub Teen{
	#subroutine to handle teens
	my $val = 0;
	my ($w) = @_;
	
	$val = 3 if $w == 0;
	$val = 6 if $w == 1 || $w == 2;
	$val = 8 if $w == 3 || $w == 4 || $w == 8 || $w == 9;
	$val = 7 if $w == 5 || $w == 6;
	$val = 9 if $w == 7;
	
	return $val;
}
