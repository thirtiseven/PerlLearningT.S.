use 5.010; 

greet('Ferd');
greet('Barney');

sub greet{
	state $alice ;
	my $bob = shift ; 
	print "Hi $bob!";
	if (defined $alice) {
		say "$alice is also here!";
	}
	else {
		say "You are the first one here!";
	}
	$alice = $bob;
}