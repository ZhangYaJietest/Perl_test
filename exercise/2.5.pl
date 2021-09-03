my @list = (1..5,11..15);
$len = $#list;
foreach (0..$len){
   $list[$_] *=2 ;
}
