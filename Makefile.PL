use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Template::Plugin::Filter::Minify::JavaScript',
    VERSION_FROM      => 'lib/Template/Plugin/Filter/Minify/JavaScript.pm',
    PREREQ_PM         => {
        'Template'             => 2.0,
        'JavaScript::Minifier' => 0
    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Template/Plugin/Filter/Minify/JavaScript.pm',
       AUTHOR         => 'Michael Schout <mschout@cpan.org>') : ()),
);
