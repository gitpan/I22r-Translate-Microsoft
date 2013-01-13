use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'I22r::Translate::Microsoft',
    AUTHOR              => q{Marty O'Brien <mob@cpan.org>},
    VERSION_FROM        => 'lib/I22r/Translate/Microsoft.pm',
    ABSTRACT_FROM       => 'lib/I22r/Translate/Microsoft.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'I22r::Translate' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'I22r-Translate-Microsoft-*' },
);

print STDERR qq[
*******************************************************************
Using the Microsoft translation backend requires credentials for
Microsoft data services. If you wish to test the Micrsoft backend, 
you will need to edit the file

       t/Constants.pm

and specify your credentials. See the perldoc for 
I22r::Translate::Microsoft for information about obtaining a
set of credentials for yourself, or

       http://search.cpan.org/perldoc?I22r-Translate-Microsoft#CREDENTIALS

*******************************************************************
];
