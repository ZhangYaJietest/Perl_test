my @list1 =qw(aa,dddd,aa,dddd,aa);
@ulist = map (uc,@list1);
print "@ulist";
print "\n",map (uc,@list1);
