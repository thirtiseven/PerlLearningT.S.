while (<STDIN>) 
{
	chomp;
	if(/(\b\w*a\b)/)
	{
		print "|$`<$&>$'|\n";
		print "\$1 contains '$1'\n";
	}
	else
	{
		print "No match: |$_|\n";
	}
}