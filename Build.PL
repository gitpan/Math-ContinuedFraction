use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Math::Continuedfraction',
    abstract		=> 'Create and Use Continued Fractions',
    dist_author         => q{John M. Gamble <jgamble@cpan.org>},
    dist_version_from   => 'lib/Math/Continuedfraction.pm',

    requires => {
	'Math::BigRat' => 0,
    },

    build_requires => {
        'Test::Simple' => 0,
    },

    add_to_cleanup      => [ 'Math-Continuedfraction-*' ],
    license             => 'perl',
    create_readme	=> 0,
    create_makefile_pl => 'traditional',

    meta_merge	=> {
	    keyword => [qw(math continued-fraction sequences)],
    },
);

$builder->create_build_script();
