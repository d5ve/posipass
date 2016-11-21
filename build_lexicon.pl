#!/usr/bin/env perl

use strict;
use warnings;

use List::Util;
my $source_file = 'SentiWordNet_3.0.0_20130122.txt';
my $dest_file   = 'sentiwordnet_positive_words.txt';

open my $in, '<', $source_file
    or die "Unable to open source file - $!";

open my $out, '>', $dest_file
    or die "Unable to open dest file - $!";

my %words;
while ( my $line = <$in> ) {
    chomp $line;
    next if $line =~ m{\A \s* \#}xms;
    my ($POS, $ID, $PosScore, $NegScore, $SynsetTerms, $Gloss) = split /\s+/, $line, 6;

    next unless defined $POS && defined $ID && defined $PosScore && defined $NegScore;

    if ( ($NegScore == 0 && $PosScore > 0) || ($PosScore - $NegScore > 0.10) ) {
        my $word = $SynsetTerms;
        $word =~ s{ \#.* }{}xms;
        $words{$word} ++;
    }

}
print $out "$_\n" for sort { $a cmp $b } List::Util::uniq(keys %words);

