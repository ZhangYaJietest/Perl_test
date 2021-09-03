my @list = (1..5,11..15);
shift @list;
$list[-1] /= 5;
print "@list"; 
