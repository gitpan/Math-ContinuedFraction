#!perl

use Test::Simple tests => 1;

use Math::Continuedfraction;

#
# C. F. Olds example.
#
my $cf = Math::Continuedfraction->from_ratio(67, 29);
my $ta = $cf->to_ascii();

ok($ta eq q([2, 3, 4, 2]), "->ascii() check (returns '". $ta . "'");

exit(0);
