#!/usr/bin/perl6

sub install ($install
          , :$path="" ) {
    say "installing $install";
    shell "mkdir -p ~/.modkit";
    shell "git clone https://$install ~/.modkit/$install";
    shell "mv $install/$path $custom_dir";
}

sub MAIN (Str :$install?
        , Str :$path?) {
    if $install {
    	if $path {
        	install $install, :path($path);
        } else {
        	install $install;
        }
    } else {
        say "ModKit v0.1.0";
        say "Run modkit --install=github.com\/user\/repo to install a repository";
        
    }
}
