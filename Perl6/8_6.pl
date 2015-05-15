while (<>) 
{
	chomp;
	if (/\s\z/) 
	{
		print "$_#\n";
	}
}