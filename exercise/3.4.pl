sub sum{
    foreach $number(@_){
	    if($number<0){
		    return "negative number found: $number"
		}else{
	        $sum += $number;
		}
	}
	$sum;
}
my @list = (1..100,101);
print sum(@list);
