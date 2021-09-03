my @list = ("Fred","Wilma","Pebbles");
my @list1 = ("Barney","Betty");
my $var = "Bamm-Bamm";

my $room = $list[1];
splice (@list,1,1,@list1);
splice (@list,1,0,$var);
print $room."\n";
print "@list";
