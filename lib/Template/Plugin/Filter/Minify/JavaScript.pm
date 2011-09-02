package Template::Plugin::Filter::Minify::JavaScript;

# ABSTRACT: JavaScript::Minifier filter for Template Toolkit

use 5.006;
use strict;
use base 'Template::Plugin::Filter';
use JavaScript::Minifier;

sub init {
    my $self = shift;

    $self->install_filter('minify_js');

    return $self;
}

sub filter {
    my ($self, $text) = @_;

    $text = JavaScript::Minifier::minify(input => $text);

    return $text;
}

1;

__END__

=begin Pod::Coverage

init
filter

=end Pod::Coverage

=head1 SYNOPSIS

  [% USE Filter.Minify.JavaScript %]

  [% FILTER minify_js %]
    $(document).ready(
        function() {
            $('body').append('<div>Hello World!</div>');
        }
    );
  [% END %]

=head1 DESCRIPTION

This module is a Template Toolkit filter, which uses JavaScript::Minifier to
compress javascript code from filtered content during template processing.

=head1 SEE ALSO

L<JavaScript::Minifier>, L<Template::Plugin::Filter>, L<Template>

