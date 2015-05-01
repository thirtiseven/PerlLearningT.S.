print"please enter two number in two lines\n";
chomp($number_1 = <STDIN>);
chomp($number_2 = <STDIN>);
$_ = $number_1 * $number_2;
print $_;
