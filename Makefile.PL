use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT_FROM    => 'script/pmcheck',
    AUTHOR           => 'Andrew Pam <andrew.pam@strategicdata.com.au>',
    EXE_FILES        => ['script/pmcheck'],
    LICENSE          => 'perl',
    MIN_PERL_VERSION => '5.10.0',
    NAME             => 'pmcheck',
    PM               => {},
    PREREQ_PM => { 'PPI::Document' => 0, 'Test::More' => 0, 'version' => 0, },
    VERSION_FROM => 'script/pmcheck',
    clean        => { FILES => 'pmcheck-*' },
    dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);