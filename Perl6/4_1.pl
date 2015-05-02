sub total{
	my $alice;
	foreach (@_) 
	{
		$alice += $_;
	}
	$alice;
}

