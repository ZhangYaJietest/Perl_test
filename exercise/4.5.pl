my $dir = "D:\\TEMP";
chdir $dir or  die "can not chdir home";
foreach $file(glob "*.pdf"){
    my $newfile = $file;
	$newfile =~ s/\.pdf$/.txt/;
	if (rename $file => $newfile){
	    print "$file success\n";
	}
}
