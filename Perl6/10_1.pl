my $secret = int(1 + rand 1024);
#print $secret;
my $chances = 7;
while(1)
{
	
	print ">>>";
	chomp(my $guess = <STDIN>);
	if ($guess =~ /quit|exit/) 
	{
		last;
	}elsif ($guess == $secret) {
		print "Bingo!\n";
		last;
	}elsif ($guess > $secret) {
		print "Too high\n";
	}else{
		print "Too low\n";
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
