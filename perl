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
    if(/[A-Z]/){
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

