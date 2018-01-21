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

1;



package main;

use strict;
use warnings;

change_sigil();
overload_operator();

sub change_sigil {

    my $a = 1;
    my @a = (1, 2);
    sub a { 3 };

    if ($a == 1 && @a == 2 && &a == 3) {
        print "True by changing the Sigil!\n";
    }
}

sub overload_operator {

    my $a = AllEqualObject->new;

    if ($a == 1 && $a == 2 && $a == 3) {
        print "True by overloading an operator!\n";
    }
}

