print "Enter the first number\n";
chomp(my  $var1 = <STDIN>);
print "Enter the second number\n";
chomp(my  $var2 = <STDIN>);
print "The original number is ($var1,$var2)\n";
my $var = $var1;
$var1 = $var2;
$var2 = $var;
print "The number after exchange is($var1,$var2)\n";
