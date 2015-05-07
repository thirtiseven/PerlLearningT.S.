my %lastname = qw\
	sam chen
	angela hu
	alfred lee
	jifeng zhang
	oliver fanning
\;
chomp(my $name = <STDIN>);
print "$name $lastname{$name}\n";