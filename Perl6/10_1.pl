my $secret = int(1 + rand 100);
#print $secret;
my $chances = 5;
while(1)
{
	if
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
	print "You have $chances chances left.\n";
	$chances--;
}
