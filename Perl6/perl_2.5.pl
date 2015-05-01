print "enter a string and a number in two lines\n";
chomp($string = <STDIN>);
chomp($number = <STDIN>);
$count = 0;
while ($count < $number) {
	print $string;
	$count += 1;
}
