use ExtUtils::MakeMaker 6.48;

require 5.008;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'	       => 'Perl::Critic::Policy::Camel',
	'ABSTRACT'     => 'Perl style recommendations from Programming Perl',
	'VERSION_FROM' => 'lib/Perl/Critic/Policy/Camel.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => {
		'Perl::Critic' => '0', 
		'Test::More'   => '0',
		},

	'META_MERGE' => {
        'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/perl-ciritc-policy-camel.git',
				web  => 'https://github.com/briandfoy/perl-ciritc-policy-camel',
				},
			},
		},

	clean  => { FILES    => q|Perl-Critic-Policy-Camel-*| },
	);
