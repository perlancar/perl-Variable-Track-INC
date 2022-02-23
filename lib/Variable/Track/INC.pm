package Variable::Track::INC;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

use Data::Dump;
use Variable::Magic qw(wizard cast);

my $wiz = wizard(
    set => sub { print "\@INC is set to: (", join(", ", @{$_[0]}), ")\n" },
    len => sub { print "\@INC\'s length is set to: $_[2]\n" },
    clear => sub { print "\@INC\'s is emptied\n" },
);

cast @INC, $wiz;

1;
# ABSTRACT: Track changes to @INC

=head1 SYNOPSIS

 use Variable::Track::INC;
 # now notification for changes to @INC will be printed to STDOUT

=cut
