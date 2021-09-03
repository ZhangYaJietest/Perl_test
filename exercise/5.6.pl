my @list = (1..20);
print "Enter a number";
chomp(my $var = <STDIN>);
my @len = (0..($var-1));
print "@list[@len]";
