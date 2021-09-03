sub absolute{
   $var = $_[0];
   @abs = ($var,abs($var));
   return "@abs";
}
while(<>){
    chomp;
    print "value and absolute value is ".absolute($_)."\n";
}
