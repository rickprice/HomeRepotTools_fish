# Load important AS environment variables
source ~/.local/bin/set_as_config.sh

perl -I ~/perl5/lib/perl5 -Mlocal::lib | source

fish_add_path ~/bin
fish_add_path ~/.local/bin
