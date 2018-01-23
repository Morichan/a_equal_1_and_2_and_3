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



package ChangingSigil;

sub change_sigil {

    my $a = 1;
    my @a = (1, 2);
    sub a { 3 };

    if ($a == 1 && @a == 2 && &a == 3) {
        print "True by changing the Sigil!\n";
    }
}



package OverloadingOperator;

sub overload_operator {

    my $a = AllEqualObject->new;

    if ($a == 1 && $a == 2 && $a == 3) {
        print "True by overloading an operator!\n";
    }
}



package DoFunction;

sub do_function {
    $count = 0;

    if (a == 1 && a == 2 && a == 3) {
        print "True by doing a function!\n";
    }

    sub a {
        $count = $count > 2 ? 1 : $count + 1;
    }
}



package main;

use strict;
use warnings;

ChangingSigil->change_sigil();
OverloadingOperator->overload_operator();
DoFunction->do_function();

