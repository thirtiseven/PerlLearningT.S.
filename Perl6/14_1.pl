my @numbers;
push @numbers,split while <>;
foreach (sort { $a <=> $b }@numbers)
{
	printf "%20g\n",$_;
}