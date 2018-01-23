use strict;
use warnings;

my $a = 1;
my @a = (1, 2);
sub a { 3 };

if ($a == 1 && @a == 2 && &a == 3) {
    print "True!\n";
}
