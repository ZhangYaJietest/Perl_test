sub diffmy{
    my $a =20;
    my $b =5;
	print "@_\n";
	$_[0] - $_[1];
}
sub diff{
    $a =20;
    $b =5;
	print "@_\n";
	$_[0] - $_[1];
}

my $x =10;
my $y = 1;
$a =11;
$b =1;

print diffmy($a,$b)."\n";
print diff($a,$b)."\n";
