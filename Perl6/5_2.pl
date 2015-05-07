chomp(my @alice = <STDIN>);
print "1234567890" x 7,"\n";
foreach (@alice) 
{
	printf "%10s\n",$_;
}