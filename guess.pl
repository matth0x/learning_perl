#!/usr/bin/perl

$MAX_TRIES = 5;
$MAX_RANGE = 100;
$computer_number = int(rand($MAX_RANGE));

while ( $count < $MAX_TRIES ) {
    print "Guess a number: ";
    chomp($user_guess = <STDIN>);

    if ( $user_guess lt $computer_number ) {
        print "Nope, higher\n";
    } elsif ( $user_guess gt $computer_number ) {
        print "Nope, lower\n";
    } else {
        print "You got it!!!\n";
        last;
    }

    $count++;
}

if ( $count == $MAX_TRIES ) {
    print "The number was $computer_number\n";
}
