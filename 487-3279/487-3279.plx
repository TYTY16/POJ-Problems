#!/usr/bin/perl

use strict;
use warnings;

our %numMap = setMap();
our %directoryMap = ();
our $numOfNumsToMap = <>;

@inputNums = ();
if($numOfNumsToMap>0){
	for(my $i = 0; $i<$numOfNumsToMap; $i++){

	}	
} else{
	exit 1;
}


sub setMap {
	my %numMap = ();
	$numMap {"A"} = 2;
	$numMap {"B"} = 2;
	$numMap {"C"} = 2;
	$numMap {"D"} = 3;
	$numMap {"E"} = 3;
	$numMap {"F"} = 3;
	$numMap {"G"} = 4;
	$numMap {"H"} = 4;
	$numMap {"I"} = 4;
	$numMap {"J"} = 5;
	$numMap {"K"} = 5;
	$numMap {"L"} = 5;
	$numMap {"M"} = 6;
	$numMap {"N"} = 6;
	$numMap {"O"} = 6;
	$numMap {"P"} = 7;
	$numMap {"R"} = 7;
	$numMap {"S"} = 7;
	$numMap {"T"} = 8;
	$numMap {"U"} = 8;
	$numMap {"V"} = 8;
	$numMap {"W"} = 9;
	$numMap {"X"} = 9;
	$numMap {"Y"} = 9;
	return %numMap;
}