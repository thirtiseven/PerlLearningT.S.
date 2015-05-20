my $in = $ARGV[0];
if(! defined $in)
{
	die "Usage: $0 filename";
}

my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

if (! open $in_fn,'<',$in) 
{
	die "Can't open'$in':$!";
}

if (! open $in_fn,'>',$in) 
{
	die "Can't write'$in':$!";
}

while (<$in_fh>) 
{
	s/Fred/Larry/gi;
	print $out_fh $_;
}
