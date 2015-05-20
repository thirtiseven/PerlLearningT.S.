while(<$in_fn>)
{
	chomp;
	s/Fred/\n/gi;
	s/Wilma/Fred/gi;
	s/\n/Wilma/g;
	print $out_fh "$_\n";
}