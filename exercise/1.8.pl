#!/usr/bin/perl
use strict;

print "Enter a number\n";
my  $number = <STDIN>;
print "even\n",if ($number % 2 eq 0);
print "odd\n",if ($number % 2 ne 0);
foreach (1..$number){
    print $_." ";
}
