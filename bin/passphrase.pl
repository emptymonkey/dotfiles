#!/usr/bin/perl

# Genenerates random words for use in a passphrase.


use strict;
use warnings;

use Getopt::Long;

my $DICT = '/usr/share/dict/american-english';
my @NUM_SPACE = (0..9);

my $MIN_CHAR_LEN = 12;
my $MAX_CHAR_LEN = 32;

{
	my $min_char_len = $MIN_CHAR_LEN;
	my $max_char_len = $MAX_CHAR_LEN;

	GetOptions (
		"min=i" => \$min_char_len,
		"max=i" => \$max_char_len
	);

	if(($max_char_len - $min_char_len) < 1){
		print STDERR "distance between min and max password size must be at least 8 characters long.\n";
		print STDERR "\t\$min_char_len: $min_char_len\n";
		print STDERR "\t\$max_char_len: $max_char_len\n";
		exit(1);
	}

	my $max_loop_til_reset = log($min_char_len) + 1;

	open(FILE_IN, $DICT) or die "$!";
	chomp(my @dictionary = <FILE_IN>);
	close(FILE_IN);

	my @password;
	my $len;
	my $loop_count;
	RESET:
	@password = ();
	$len = 0;
	$loop_count = 0;

	do{
		if($loop_count++ == $max_loop_til_reset){
			goto RESET;
		}
		my $word;

		do{
			$word  = $dictionary[rand(@dictionary)];
			$word =~ s/\W.*//;
			$word = ucfirst($word);
		} while (length($word) == 1);

		push(@password, $word);

		$len = 0;
		for (@password){
			$len += length($_);
		}
	} while (($len < $min_char_len) || ($len > $max_char_len));

	print "@password\n";
}

