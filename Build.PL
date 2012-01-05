use 5.010;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'pmcheck',
    license           => 'perl',
    dist_author       => 'Andrew Pam <andrew.pam@strategicdata.com.au>',
    dist_version_from => 'script/pmcheck',
    requires          => { 'PPI::Document' => 0, 'Test::Differences' => 0, 'version' => 0, },
    add_to_cleanup    => ['pmcheck-*'],
);

$builder->create_build_script();
