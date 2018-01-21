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
all_equal_object();

sub change_sigil {

    my $a = 1;
    my @a = (1, 2);
    sub a { 3 };

    if ($a == 1 and @a == 2 and &a == 3) {
        print "True by changing Sigil!\n";
    }
}

sub all_equal_object {

    my $a = AllEqualObject->new;

    if ($a == 1 && $a == 2 && $a == 3) {
        print "True by overloading operator!\n";
    }
}

