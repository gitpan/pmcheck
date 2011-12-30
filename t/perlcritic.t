#!/usr/bin/env perl

use strict;
use utf8;
use version;
use warnings;

use FindBin qw( $Bin );
use Test::More;

########################################
# Tests

plan skip_all => 'Test::Perl::Critic required for testing PBP compliance'
    if !eval 'use Test::Perl::Critic; 1';    ## no critic (ProhibitStringyEval)

plan skip_all =>
    'Perl::Critic v1.117 or later required for testing PBP compliance'
    if $Perl::Critic::VERSION < version->parse('v1.117');

Test::Perl::Critic::all_critic_ok("$Bin/../script");

exit;
