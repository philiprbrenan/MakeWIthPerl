#!/usr/bin/perl -I/home/phil/perl/cpan/DataTableText/lib -I/home/phil/perl/makeWithPerl/ -I/home/phil/perl/cpan/JavaDoc/lib -I/home/phil/perl/cpan/MakeWithPerl/lib/
#-------------------------------------------------------------------------------
# Test MakeWithPerl
# Philip R Brenan at gmail dot com, Appa Apps Ltd, 2021
#-------------------------------------------------------------------------------

use warnings FATAL => qw(all);
use strict;
use Data::Dump qw(dump);
use Data::Table::Text qw(:all);
use Test::More tests=>1;
use MakeWithPerl;

my $f = owf("zzz.pl", <<END);
#!/usr/bin/perl
say STDOUT 'Hello World';
END
my $c = qq(perl -Ilib -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" -- --run $f 2>&1);
my $r = qx($c);
unlink $f;

ok $r =~ m(Hello World);
