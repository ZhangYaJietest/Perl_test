$dir = "C:\\Windows";
if ($dir =~ /^\s*$/){
    chdir or  die "can not chdir home";
}else{
    chdir $dir or  die "can not $dir";
}

$file = "*.exe";
@files = glob( $file );
print "@files\n";
print $#files + 1;
