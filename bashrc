if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PATH="/Users/enderlej/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/enderlej/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/enderlej/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/enderlej/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/enderlej/perl5"; export PERL_MM_OPT;
