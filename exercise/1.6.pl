#!/usr/bin/perl
use strict;

print "Enter the first string\n";
my  $str1 = <STDIN>;
print "Enter the second string\n";
my  $str2 = <STDIN>;
print "same" if ($str1 eq $str2);
print "not same" if ($str1 ne $str2);
