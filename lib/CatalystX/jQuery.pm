package CatalystX::jQuery;

use strict;
use warnings;

use Catalyst::Runtime '5.70';

use parent qw/Catalyst/;
use Catalyst qw/
  ConfigLoader
  Static::Simple
/;


our $VERSION = '0.01';
# Start the application
__PACKAGE__->setup();


=head1 NAME

CatalystX::jQuery - Catalyst+jQuery+Ajax demo

=head1 SYNOPSIS

    script/catalystx_jquery_server.pl

=head1 DESCRIPTION

People keep asking for this, so here it is.

=head1 SEE ALSO

L<CatalystX::jQuery::Controller::Root>, L<Catalyst>

=head1 AUTHOR

Ash Berlin C<< <ash@cpan.org> >>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
