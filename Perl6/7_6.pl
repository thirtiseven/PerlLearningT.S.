while (<>) 
{
	if (/wilma.*fred|fred.*wilma/) 
	{
		print;
	}
}
#OR 
#if(/wilma/){if(/fred/){print;}}