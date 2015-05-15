use 5.010;

while (<STDIN>) 
{
	chomp;
	if(/(?<word>\b\w*a\b)/)
	{
		print "|$`<$&>$'|\n";
		print "'word' contains '$+{word}'\n";
	}
	else
	{
		print "No match: |$_|\n";
	}
}