my $secret = int(1 + rand 100);
#print $secret;
while(1)
{
	chomp(my $guess = <STDIN>);
	if ($guess =~ /quit|exit/) 
	{
		last;
	}elsif ($guess == $secret) {
		print "Bingo!\n";
		last;
	}elsif ($guess < $sevret) {
		print "Too high\n";
	}else{
		print "Too low\n";
	}
}
