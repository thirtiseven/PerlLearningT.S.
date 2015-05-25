use 5.010;
my $secret = int(1 + rand 100);
#print $secret;
my $chances = 7;
while(1)
{
	
	print ">>>";
	chomp(my $guess = <STDIN>);
	given ($guess)
	{
	when ($_ =~ /quit|exit/)   { break;}
	when ($_ == $secret)       { print "Bingo!\n";break;}
	when ($_ > $secret) 	   { print "Too high\n";}
	default 				   { print "Too low\n";}
	}
	if ($chances <= 0) 
	{
		print "You lose!The answer is $secret!\n";
		
		last;
	}else{
	print "You have $chances chances left.\n";
	}
	$chances--;
}