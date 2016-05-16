#!/usr/bin/perl

use strict;
use warnings;

my $input = <>;
my @values = split(' ', $input);

if(scalar(@values) != 2){
	return -1;
} else{
	$a = $values[0];
	$b = $values[1];
}

print $a + $b;