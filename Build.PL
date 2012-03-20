use 5.010;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    add_to_cleanup    => ['pmcheck-*'],
    dist_author       => 'Andrew Pam <andrew.pam@strategicdata.com.au>',
    dist_version_from => 'script/pmcheck',
    license           => 'perl',
    module_name       => 'pmcheck',
    requires          => { 'PPI::Document' => 0, 'Test::Differences' => 0, 'version' => 0, },
    script_files      => 'script',
);

$builder->create_build_script();
