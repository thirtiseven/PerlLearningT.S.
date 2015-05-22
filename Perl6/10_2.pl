my $Debug = $ENV {DEBUG} // 1;
my $secret = int(1 + rand 100);
print "Don't tell anyone,but the secret number is $secret.\n"
	if $Debug;
my $chances = 5;
while(1)
{
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
