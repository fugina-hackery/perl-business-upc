
use strict;
use Test;

BEGIN { plan tests => 4, todo => [] }

use Business::UPC;

# an object to test with:
my $upc;

# tests for constructing with unknown check digit

$upc = new Business::UPC('01200000013x');

ok($upc);
ok(uc($upc->check_digit), 'X');
ok($upc->fix_check_digit);
ok($upc->check_digit, '3');

