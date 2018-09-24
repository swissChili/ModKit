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
    my $green = "\e[1;32m";
    my $purple = "\e[1;35m";
    my $end = "\e[0m";
    if $install {
    	install $install, $path, $custom-dir;
    } else {
        say "ModKit$purple v0.1.0$end\n";
        say "{$purple}USAGE:$end";
        say "modkit$green --argument={$purple}value$end 
{$green}--install=$end      HTTP(s) url of repository to clone
{$green}--path=$end         Path in repository to install. Defaults to$purple /$end
                e.g. If the mod is located in /src/mod, 
                you should specify$green --path={$purple}src/mod/$end
{$green}--custom-dir=$end   Directory to install mod to, defaults to
                ~/.steam/steam/steamapps/common/Team Fortress 2/tf/custom
";
    }
}
