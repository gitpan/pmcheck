use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'pmcheck',
    AUTHOR        => 'Andrew Pam <andrew.pam@strategicdata.com.au>',
    VERSION_FROM  => 'script/pmcheck',
    ABSTRACT_FROM => 'script/pmcheck',
    EXE_FILES     => ['script/pmcheck'],
    PM            => {},
    PREREQ_PM     => { 'Test::More' => 0, 'version' => 0, },
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'pmcheck-*' },
);
