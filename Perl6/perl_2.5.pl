print "print a string and a number in two lines\n";
$string = <STDIN>;
$number = <STDIN>;
$count = 0;
while ($count < $number) {
	print $string;
	$count += 1;
}