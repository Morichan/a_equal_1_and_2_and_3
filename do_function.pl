use strict;
use warnings;

my $count = 0;

sub a {
    $count = $count > 2 ? 1 : $count + 1;
}

if (a == 1 && a == 2 && a == 3) {
    print "True!\n";
}
