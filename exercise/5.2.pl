$number = int(1 + rand 100);
print "$number\n";
while(<>){
    chomp;
	if ($_ == $number){
	    print "bingo\n";
	    last;
	}elsif(/quit|exit/i){
	    print "number is $number\n";
		last;
	}
	elsif($_ < $number){
	    print "too low\n";
	}else{
	    print "too high\n";
	}
	
}
