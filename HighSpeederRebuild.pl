package MT::Plugin::OMV::HighSpeederRebuild;

use strict;
use MT 3;
use MT::Entry;

use vars qw( $MYNAME $VERSION );
$MYNAME = 'HighSpeederRebuild';
$VERSION = '0.01 DEVEL';

use base qw( MT::Plugin );
my $plugin = __PACKAGE__->new({
    id => $MYNAME,
    key => $MYNAME,
    name => $MYNAME,
    version => $VERSION,
    author_name => 'Open MagicVox.net',
    author_link => 'http://www.magicvox.net/',
    doc_link => '',
    description => <<PERLHEREDOC,
Get high speed rebuilding to ignore the previous/next entry.
PERLHEREDOC
});
MT->add_plugin ($plugin);

no warnings qw( redefine );
*MT::Entry::next = sub { undef; };
*MT::Entry::previous = sub { undef; };

1;