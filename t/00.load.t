#!/usr/bin/env perl

use strict;
use utf8;
use warnings;

use FindBin qw( $Bin );
use Test::More tests => 1;

########################################
# Tests

ok( !system("perl -cw $Bin/../script/pmcheck"), 'pmcheck compiles' );

exit;
