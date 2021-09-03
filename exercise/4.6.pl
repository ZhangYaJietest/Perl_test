use File::Copy;

my $dir = "D:\\TEMP";
chdir $dir or  die "can not chdir home";
foreach $file(glob "*.pdf"){
    move ($file,"BAK");
}
