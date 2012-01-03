#!/usr/bin/env perl

use strict;
use utf8;
use warnings;

use File::Spec::Functions;
use FindBin qw( $Bin );
use Test::More tests => 1;

########################################
# Tests

require_ok( catfile( $Bin, &updir, 'script', 'pmcheck' ) );

exit;
