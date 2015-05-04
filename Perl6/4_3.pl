my @fred = &above_average(100,1..10);
print "\@ferd is @fred\n";

sub average{
	if (@_ == 0) {
		return
	}
	my $alice = @_; #count
	my $bob = total(@_);
	$bob / $alice;
}

sub above_average{
	my $carol = average(@_);
	my @dave;
	foreach my $eve(@_) {
		if ($eve > $carol) {
			push @dave,$eve;
		}
	}
	@dave;
}

sub total{
	my $alice;
	foreach (@_) 
	{
		$alice += $_;
	}
	$alice;
}