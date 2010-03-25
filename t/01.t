use Test::Simple 'no_plan';
use strict;
use lib './lib';
use Cwd;
use vars qw($_part $cwd);

#use Smart::Comments '###';
$cwd = cwd();

use LEOCHARRE::FontFind 'find_ttf','find_ttfs';

LEOCHARRE::FontFind::_cache_reset();


my @ttfs = LEOCHARRE::FontFind::_abs_ttfs();
ok(scalar @ttfs,'have a list of ttfs');


my @fonts = find_ttfs('vera');
ok( @fonts, 'find_ttfs');

my $font = find_ttf('vera');
ok( $font, 'find_ttf');

warn "got : $font\n";















sub ok_part {
   printf STDERR "\n\n===================\nPART %s %s\n==================\n\n",
      $_part++, "@_";
}



