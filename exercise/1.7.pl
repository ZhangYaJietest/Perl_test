#!/usr/bin/perl
use strict;

print "Enter a number\n";
my  $number = <STDIN>;
foreach (1..$number){
    print $_." ";
}
