$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $alice = 0;
foreach my $key (keys %ENV)
{
	my $key_length = length($key);
	$alice = $key_length if $key_length > $alice;
}

foreach my $bob (sort keys %ENV)
{
	printf "%-${alice}s %s\n",$key,$ENV{$key}//"(undefined)";
}