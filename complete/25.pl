#!/usr/bin/perl

use Math::BigInt;

sub bint { Math::BigInt->new(shift); }

$first = bint(1);
$second = bint(1);
$fibonachiNumber = bint(0);
$i=2;

while(length($j) < 1000){
  $fibonachiNumber = $first + $second;
  $first = $second;
  $second = $fibonachiNumber;
  $i++;
  $j = "$fibonachiNumber";
}

print $i;
