my @list1 =(aa,bb,cc,dd,ee);
my @list2 =(ab,bb,cd,dd,ef);

if (@list1 ~~ @list2){
    print "match success";
}else{
    foreach(@list1){
	    if ($_ ~~ @list2){
		    print "$_ ";
		  }
	  }
}
