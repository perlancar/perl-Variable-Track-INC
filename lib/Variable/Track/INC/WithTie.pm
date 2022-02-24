package Variable::Track::INC::WithTie;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

use Tie::Array::Log;
my @orig_INC = @INC;
tie @INC, 'Tie::Array::Log';
@INC = @orig_INC;

1;
# ABSTRACT: Track changes to @INC

=head1 SYNOPSIS

 use Variable::Track::INC;
 # now notification for changes to @INC will be logged

=cut
