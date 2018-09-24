#!/usr/bin/perl6

sub install ($install
          , :$path 
          , :$custom_dir) {
    say "installing $install";
    shell "mkdir -p ~/.modkit";
    shell "git clone https://$install ~/.modkit/$install";
    shell "mv $install/$path $custom_dir";
}

sub MAIN (Str :$install?
        , Str :$path=""
        , Str :$custom-dir="~/.steam/steam/steamapps/common/Team Fortress 2/tf/custom" ) {
    if $install {
    	install $install, $path, $custom-dir;
    } else {
        say "ModKit v0.1.0\n\n";
        say "USAGE:";
        say "modkit --argument=value 
--install=      HTTP(s) url of repository to clone
--path=         Path in repository to install. Defaults to /
                e.g. If the mod is located in /src/mod, 
                you should specify --path=src/mod/
--custom-dir=   Directory to install mod to, defaults to
                ~/.steam/steam/steamapps/common/Team Fortress 2/tf/custom
";
    }
}
