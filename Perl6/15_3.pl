for ( @ARGV )
{
	say "Processing $_";
	
	when(! -e) {say "\tFile does not exist"  }
	when(-r _) {say "\tReadable!"; continue  }
	when(-w _) {say "\tWritable!"; continue  }
	when(-x _) {say "\tExecutable!";continue }
}