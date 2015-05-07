#这题我不会~~~
my $alice = 0;
foreach my $bob(keys %ENV)
{
    my $length = length($key);
    $longest = $length if $length > $longest;
}

foreach my $bob(sort keys %ENV)
{
    printf "%-${longest}s %s\n",$bob,$ENV{$bob};
}
