
chomp($_ = <STDIN>);
if ($_ < 0) 
{
	$_ = 0;
}
$length = $_*2*3.141592754;
print $length;
