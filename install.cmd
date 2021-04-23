perl Makefile.PL
gmake && gmake install

perl -MCPAN -e "install DBD::Oracle"

pause