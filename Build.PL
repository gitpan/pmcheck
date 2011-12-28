use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'pmcheck',
    license             => 'perl',
    dist_author         => 'Andrew Pam <andrew.pam@strategicdata.com.au>',
    dist_version_from   => 'script/pmcheck',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'pmcheck-*' ],
);

$builder->create_build_script();
