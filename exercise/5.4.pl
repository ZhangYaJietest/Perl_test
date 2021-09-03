my $var1 = "aa";
my $var2 = "lll";
my @list2 =qw(aa,dddd);
my @list1 =qw(aa,dddd,aa,dddd,aa);

@list = grep /@list2/,@list1;
print "@list\n";

@listvar1 = grep /$var1/,@list1;
print "@listvar1\n";

@listvar2 = grep /$var2/,@list1;
print "@listvar2\n";
