use 5.010;
 for (1..105)
{
	my $alice = '';
	given ($_)
	{
		when (not $_ % 3)	{ $alice .= ' Fizz'; continue }
		when (not $_ % 5)	{ $alice .= ' Buzz'; continue }
		when (not $_ % 7)	{ $alice .= ' Sausage'}
	}
	say "$_ $alice";
}