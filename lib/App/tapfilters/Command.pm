use strict;
use warnings;

package App::tapfilters::Command;

# ABSTRACT: base class for App::tapfilters commands

use App::Cmd::Setup -command;

sub opt_spec {
  my ($class, $app) = @_;
  return (['help' => "This usage screen"], $class->options($app));
}

sub validate_args {
  my ($self, $opt, $args) = @_;

  die $self->_usage_text if $opt->{help};
  $self->validate($opt, $args);
}

sub options  { }
sub validate { }

1;
