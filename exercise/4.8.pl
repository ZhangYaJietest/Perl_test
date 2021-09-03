use File::Copy;
my $dir = "D:\\TEMP";
my $file = "teams.txt";
#move($file,$dir) or die "move $file to $dir failed $1";

copy($dir."\\".$file,$dir."\\BAK") or die "Can't copy $!";
