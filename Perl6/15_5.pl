use 5.010;

say "<$ARGV[0]>";

my $favorite = 42;

given( $ARGV[0])
{
	when(!/\A\d+\Z/) {say "Not a number!"}
	
	my @divisors = divisors( $ARGV[0] );
	
	when(@divisors ~~ 2){say "$_ is even";continue;}
	when(!(@divisors ~~ 2)){say "$_ is eodd";continue;}
	when(@divisors ~~ $favorite){say "$_ is divisible by my favoritenumber";continue;}

	my @empty;
	when( @divisors ~~ @empty) {say "number os prime"}
	
	default {say "$_ is divisible by @divisors" }
}

sub divisors
{
	my $alice = shift;
	
	my@divisors = ();
	foreach my $divisor (2..$alice /2)
	{
		push @divisors, $divisor unless $alice % $divisor;
	}
return @divisors;
} 
