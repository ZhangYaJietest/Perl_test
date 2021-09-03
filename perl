#!/usr/bin/perl


#第二章
#3

print "Please enter a radius\n";
chomp($radius = <STDIN>);
$pi = 3.141592654 ; 
if($radius < 0 ){
	$radius = 0; 
}
$perimeter = $radius*$pi*2 ;
print "The circumference of the circle is $perimeter\n" ; 
print sprintf('The circumference of the circle is %.1f ',$perimeter) ; 


#5
print "Please enter a number\n";
chomp($num = <STDIN>);
print "Please enter a string\n";
$str = <STDIN>;
$ans = $str x $num;
print "The result is \n$ans \n"




#第三章
#1
print "The input string ends with control+Z \n";
@string = <STDIN>;
print reverse @string ;


#2
@name = qw(fred betty barney dino wilma pebbles bamm-bamm);
print "Enter some numbers to end with control+Z\n";
@number = <STDIN>;
foreach $num(@number){
    print "@name[$num-1]\n";	
}


#3
print "The input string ends with control+Z \n";
chomp(@string = <STDIN>);
print sort @string ;
print sort <STDIN>;


#第四章
#1 2
sub total{
    my $sum ; 
    foreach (@_){
        $sum += $_;    
    }	
    $sum;
}
@list = (1..10);
$list_sum = total(@list);
print "$list_sum\n";
print total(1,3,5,7,9) ,"\n";
#print total(<STDIN>);
print total(1..1000), "\n";




#5
use 5.010;

sub greet{
    state @names;
    my $name = shift(@_);
    if(@names){
        print "$name seen @names\n";
    }
    else{
        print "first $name\n"    
    }
    push(@names,$name);
}


greet('A');
greet('B');
greet('C');
greet('D');



#第五章
#2 3
chomp(@string = <STDIN>);
chomp($number = <STDIN>);
print "1234567890" x8 ,"\n";
foreach(@string){
   printf "%${number}s\n",$_;
}


#第六章
#1
%name = qw{A a 
          B  b 
          C  c};
chomp($appoint = <STDIN>);
print $name{$appoint};


#2
chomp(@string = <STDIN>);
foreach (@string){
    $dict{$_} +=1;
}
foreach (sort keys %dict){
    print "$_ have $dict{$_}\n"
}


#3
foreach (keys %ENV){
    my $len = length($_);
    $maxlen = $len if $len > $maxlen;    
}
foreach (sort keys %ENV){
    printf "%${maxlen}s %s \n",$_ ,$ENV{$_} ;
}



##第七章
##123456
while(<STDIN>){
    if(/fred/){
        print "fred match  ",$_; 
    }
    if(/fred|Fred/){
        print "fred or Fred match  ",$_; 
    }
    if(/\./){
        print "point match  ",$_; 
    }
    if(/^[A-Z]/){
        print "Start with a capital letter match  ",$_; 
    }
    if(/(.)\1/){
        print "Any two consecutive characters match  ",$_; 
    }
    if(/(\S)\1/){
        print "Any two consecutive non white space characters match  ",$_; 
    }
    if(/wilma.*fred|fred.*wilma/){
        print "wilma and fred match"
    }
}

#第八章
#1
while(<STDIN>){
    chomp;
    if (/match/){
        print "match |$`<$&>$'|\n";   ## $& 存放匹配中的值
    }else{
        print "no match\n";    
    }
}

#2
while(<STDIN>){
    chomp;
    if (/a\z/){
        print "match |$`<$&>$'|\n";   ## $& 存放匹配中的值
    }else{
        print "no match\n";    
    }
}

#3
while(<STDIN>){
    chomp;
    if (/(a\z)/){
        print "match |$`<$&>$'|\n";   ##$`存放匹配之前的值  $& 存放匹配中的值 $'存放匹配之后的值
        print "\$1 contains '$1'\n";  ## $1 第一对小括号中的原符号所对应的匹配内容
    }else{
        print "no match\n";    
    }
}

#4    \z 以指定字符结尾 \b匹配以英文字母,数字为边界的字符串  \w英文字母或数字的字符串
use 5.010;
while(<STDIN>){
    chomp;
    if (/(?<name>\w*a\b)/){                    # ?<label> 对应捕获的值
        print "match |$`<$&>$'|\n";           ##$`存放匹配之前的值  $& 存放匹配中的值 $'存放匹配之后的值
        print "name contains '$+{name}'\n";   ## 捕获的内容存储在哈希$+
    }else{
        print "no match\n";    
    }
}


#5
use 5.010;
while(<STDIN>){
    chomp;
    if (/(?<name>\w*a\b)(.{0,5})/xs){       # ?<label> 对应捕获的值
        print "match $+{name}\n";           ##$`存放匹配之前的值  $& 存放匹配中的值 $'存放匹配之后的值
        print "name contains $2\n";         ## $2 第二个小括号
    }else{
        print "no match\n";    
    }
}



#第9章
#1
$what = 'yes|no';
while(<STDIN>){
    chomp;
    if (/($what){3}/){      
        print "match $1\n";              
    }else{
        print "no match\n";    
    }
}

#2

$filename = 'out.out';
if 


#第十章
#1
$number = int(1 + rand 100);
print "$number\n";
while(<>){
    chomp;
	if ($_ == $number){
	    print "bingo\n";
	    last;
	}elsif(/quit|exit/i){
	    print "number is $number\n";
		last;
	}
	elsif($_ < $number){
	    print "too low\n";
	}else{
	    print "too high\n";
	}
	
}

#3

use 5.010;
$ENV{wne} = undef;
$ENV{wtwo} = '';
$ENV{wundef} = 0;
foreach $key(sort keys %ENV){
    if (! defined($ENV{$key})) {
	    print "$key \n";
	}
}


#Chapter 12
#1
foreach $name(@ARGV){
    unless(-e $name){
	    print "$name not exist\n";
	}
	if(-r $name){
	    print "$name can read\n";
	}
	print "$name can write\n" if -w $name;
	print "$name can execute\n" if -x $name;
	   
}


#2
$filename = shift @ARGV;
$time = -M $filename;
foreach $name(@ARGV){
    $timenew = -M $name;
	($filename,$time) =($name,$timenew) if $timenew>$time;
}
print "filename:$filename,time:$time\n";
printf "filename:%s,time:%d",$filename,$time;



# Chapter 13
#1
chomp($dir = <STDIN>);
if ($dir =~ /^\s*$/){
    chdir or  die "can not chdir home";
}else{
    chdir $dir or  die "can not $dir";
}
@name = <*>;
foreach(sort @name){
    print "$_\n";
}

#2
chomp($dir = <STDIN>);
if ($dir =~ /^\s*$/){
    chdir or  die "can not chdir home";
}else{
    chdir $dir or  die "can not $dir";
}
@name = <.* *>;
foreach(sort @name){
    print "$_\n";
}

#3
chomp($dir = <STDIN>);
if ($dir =~ /^\s*$/){
    opendir(DIR,'.') or "can't open",$dir;
    foreach($file = sort readdir DIR){
        print "$file\n";
    }
	closedir DIR;
}else{
    chdir $dir or  die "can not $dir";
}


#4  unlink(rm file);


