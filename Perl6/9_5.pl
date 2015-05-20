my %do_these;
foreach (@ARGV)
{
	$do_these{$_} = 1;
}

while(<>)
{
	if(/\A## Copyright/)
	{
		delete $do_these{$ARGV};
	}
}

@ARGV= sort keys %do_these;
$^I = ".bak";
while (<>)
{
	if(/\A#!/)
	{
		$_ .= "## Copyright(c) 20XX"by Yours Truly\n";
	}
	print;
}