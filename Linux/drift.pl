#!/usr/bin/perl

# Get drift
my $lines = `ntpdate -q pool.ntp.org`;
my @lines = split(/\s/,$lines);
my $dummy = pop(@lines);
my $drift = pop(@lines);

my $nowstring = `date +"%Y%m%d-%H%M%S"`;
chomp $nowstring;
print "$nowstring -> $drift\n";

