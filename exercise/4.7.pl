my $dir = "D:\\TEMP\\BAK";
chdir $dir or  die "can not chdir home";

foreach $file(glob "*"){
    print $file;
    unlink($file) or die "fail $1";
}
my $dir = "D:\\TEMP";
chdir $dir or  die "can not chdir home";
rmdir( "BAK" ) or die "can't delete $dir , $!";
