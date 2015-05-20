$^I = ".bak";
while(<>)
{
	if(/\A#!/)
	{
		$_.="## Copyright (C) 20XX by Yours Truly\n";
	}
	print;
}