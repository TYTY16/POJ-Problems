#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

our %numMap = ();
our %directoryMap = ();
our @inputNums = ();

setMap();
open(INPUTFILE, "<input.txt");
my(@fileLines) = <INPUTFILE>;
if(scalar(@fileLines) != ($fileLines[0] + 1)){
	print "scalar error";
	exit 1;
} else{
	foreach(@fileLines){
		my $numString = $_;
		$numString =~ s/[-]//g;
		my $number = "";
		$number = translateToNumbers($numString);
		print("number:");
		print($number);
		print("afternumber");
		if(defined $directoryMap{$number} && $number != ''){
			$directoryMap{$number} = $directoryMap{$number} + 1;
		} else{
			$directoryMap{$number} = 1;
		}	
	}
	print Dumper(%directoryMap);
	while ( my ($key, $value) = each(%directoryMap) ) {
        print "$key $value\n";
    }
}

sub setMap {
	%numMap = (
		"A" => 2,
		"B" => 2,
		"C" => 2,
		"D" => 3,
		"E" => 3,
		"F" => 3,
		"G" => 4,
		"H" => 4,
		"I" => 4,
		"J" => 5,
		"K" => 5,
		"L" => 5,
		"M" => 6,
		"N" => 6,
		"O" => 6,
		"P" => 7,
		"R" => 7,
		"S" => 7,
		"T" => 8,
		"U" => 8,
		"V" => 8,
		"W" => 9,
		"X" => 9,
		"Y" => 9,
		"1" => 1,
		"2" => 2,
		"3" => 3,
		"4" => 4,
		"5" => 5,
		"6" => 6,
		"7" => 7,
		"8" => 8,
		"9" => 9
	);
	return %numMap;
}

sub translateToNumbers {
	my @stringList = split('', $_[0]);
	my $number = "";
	foreach my $string (@stringList){
		if(defined $numMap{$string}){
			$number = $number . "$numMap{$string}";
		} elsif($string =~ /\n/){
			return $number
		} else{
			exit 1;
		}	
	}
}