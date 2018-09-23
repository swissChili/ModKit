#!/usr/bin/perl6

sub install (Str $install) {
    say "installing $install";
}

sub MAIN (Str :$install?) {
    if $install {
        install $install;
    } else {
        say "ModKit v0.1.0";
    }
}