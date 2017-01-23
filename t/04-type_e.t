
use strict;
use Test;

BEGIN { plan tests => 14, todo => [] }

use Business::UPC;

# an object to test with:
my $upc;

# some tests with a complete type-e upc

$upc = type_e Business::UPC('01201303');

ok($upc);
ok($upc->is_valid);
ok($upc->as_upc, '012000000133');
ok($upc->number_system, '0');
ok($upc->mfr_id, '12000');
ok($upc->prod_id, '00013');
ok($upc->check_digit, '3');

# some tests with an incomplete type-e upc

$upc = type_e Business::UPC('1201303');

ok($upc);
ok($upc->is_valid);
ok($upc->as_upc, '012000000133');
ok($upc->number_system, '0');
ok($upc->mfr_id, '12000');
ok($upc->prod_id, '00013');
ok($upc->check_digit, '3');

