package CatalystX::jQuery::View::JSON;

use strict;
use warnings;
use base 'Catalyst::View::JSON';

use JSON ();

sub encode_json {
    my($self, $c, $data) = @_;
    my $encoder = JSON->new->ascii->pretty->allow_nonref;
    $encoder->encode($data);
}


=head1 NAME

CatalystX::jQuery::View::JSON - Catalyst JSON View

=head1 SYNOPSIS

See L<CatalystX::jQuery>

=head1 DESCRIPTION

Catalyst JSON View.

=head1 AUTHOR

Ash Berlin

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
