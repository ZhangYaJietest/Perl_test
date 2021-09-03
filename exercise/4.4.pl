my @list = reverse(1..90000);
$time1 = time;
foreach (sort @list){
    print "$_  "
}
$time2 = time;
print "\nTime spent is ".($time2-$time1);
