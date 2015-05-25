print "Please enter a string:";
chomp (my $string = <STDIN>);
print "Please enter a subdtring:";
chomp(my $sub = <STDIN>);

my @places;

for (my $pos = -1; ; )
{
	$pos = index($string,$sub,$pos + 1);
	last if $pos == -1;
	push @places,$pos;
}

print "Locations of '$sub' in '$string' were: @places \n";