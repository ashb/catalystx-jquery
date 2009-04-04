package CatalystX::jQuery::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

CatalystX::jQuery::Controller::Root - Root Controller for CatalystX::jQuery

=head1 DESCRIPTION

Root controller that has actions

=head1 METHODS

=cut

=head2 base

The base of all action chains.

=cut

sub base : Chained('/') PathPart('') CaptureArgs(0) {
    my ( $self, $c ) = @_;

}

=head2 index

Display index page with the links with the two jquery actions.

No code here - just an action to render the template

=cut

sub index : Chained('base') PathPart('') Args(0) {
}

sub ajax_json : Chained('base') Args(0) {
  my ($self, $c) = @_;

  # Stash some data, and tell catalyst to use this view
  $c->stash(
    current_view => 'JSON',
    json => {
      foo => 'bar',
      baz => [1,2,3]
    }
  );
}

sub ajax_html : Chained('base') Args(0) {
  my ($self, $c) = @_;

  # Stash some data, and render without the normal wrapper around it.
  $c->stash(
    no_wrapper => 1,
    foo => 'bar',
    baz => [1,2,3]
  );
}

=head2 handle_404

Display page not found message

=cut

sub handle_404 : Chained('base') PathPart('') Args() {
  my ( $self, $c ) = @_;
  $c->response->body( 'Page not found' );
  $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Ash Berlin

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
