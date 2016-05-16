#!/usr/bin/perl

use strict;
use warnings;

while(my $input = <>){
	our @values = split(' ', $input);
	if (scalar(@values != 2)){
		return -1;
	} else{
		my $r = $values[0];
		my $n = $values[1];
		if(($r>0 && $r<99.999) && ($n>0 && $n<=25)){
			print $r**$n . "\n";
		} else {
			exit 1;
		}
	}
}