sub sum{
    foreach(@_){
	    $sum += $_;
	}
	$sum;
}
my @list = (1..100);
print sum(@list);
