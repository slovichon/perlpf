# $Id$
#
#
#
#
#
#

package PF;

use XSLoader ();

our $VERSION = 0.1;

sub DESTROY {
	my ($self) = @_;
	$self->close() if $self->{open};
}

XSLoader::load("PF", $VERSION);

package PF::ALTQ;

1;
