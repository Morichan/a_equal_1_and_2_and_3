package AllEqualObject;

use overload
"==" => \&operator_eq;

sub new {
    my $self = shift;
    bless [@_], $self;
}

sub operator_eq {
    my $self = shift;
    return 1;
}



package main;

use strict;
use warnings;

my $a = AllEqualObject->new;

if ($a == 1 && $a == 2 && $a == 3) {
    print "True!\n";
}
