chomp (@alice = <STDIN>);
foreach my $bob(@alice)
{
	$carol{$bob} += 1;
}
foreach $bob(keys %carol) 
{
	print"$bob $carol{$bob}\n";
}