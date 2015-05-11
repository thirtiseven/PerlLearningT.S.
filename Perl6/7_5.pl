while (<>) 
{
	if (/(\S)\1/) 
	{
		print;
	}
}