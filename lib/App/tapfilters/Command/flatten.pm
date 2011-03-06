use strict;
use warnings;

package App::tapfilters::Command::flatten;

# ABSTRACT: Convert subtests to simple tests

use App::tapfilters -command;

sub abstract {'Convert subtests to simple tests'}

sub execute {
  my ($self, $opt, $args) = @_;
}

1;
