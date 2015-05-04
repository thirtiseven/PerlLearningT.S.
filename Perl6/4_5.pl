use 5.010; 

greet('Ferd');
greet('Barney');
greet('Betty');
greet('Wilma');

sub greet{
	state @dave ;
	my $bob = shift ; 
	print "Hi $bob!";
	if (@dave) {
		say "I've seen:@dave";
	}
	else {
		say "You are the first one here!";
	}
	push @dave,$bob;
}