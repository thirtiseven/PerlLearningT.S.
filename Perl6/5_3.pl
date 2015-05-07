chomp(my @alice = <STDIN>);
print "enter a number:";
chomp(my $bob = <STDIN>);
print "1234567890" x (($bob+9)/10),"\n";
foreach (@alice) 
{
	printf "%${bob}s\n",$_;
} 
