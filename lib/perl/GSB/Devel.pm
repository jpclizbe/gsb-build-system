package GSB::Devel;
use Exporter;

# Add our lib dir to @INC
use FindBin qw($Bin);
use lib "$Bin/../lib/perl/";
#
# # GSB Modules
use GSB::GSB;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%devel %devel_gnome);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Config Options
#

our %devel_gnome =
  (
   'anjuta'      => '2.5.90',
   'accerciser'  => '1.3.6',
   'devhelp'     => '0.19.1',
   'gdl'         => '2.23.90',
   'ghex'        => '2.22.0',
   'glade3'      => '3.4.5',
   'gnome-build' => '2.23.90',
   'nemiver'     => '0.6.1',
   'vala'        => '0.3.5',
  );

our %devel =
  (
   'autogen'             => {
                             'ver' => '5.9.5',
                             'url' => 'http://mesh.dl.sourceforge.net/sourceforge/autogen/',
                             'src' => 'tar.bz2',
			    },
   'bluefish'            => {
			     'ver' => '1.0.7',
			     'url' => 'http://mesh.dl.sourceforge.net/sourceforge/bluefish/',
			     'src' => 'tar.bz2',
			    },
   'monodevelop'            => {
				'ver' => '1.0',
				'url' => 'http://go-mono.com/sources/monodevelop/',
				'src' => 'tar.bz2',
			       },
   'monodoc'                => {
				'ver' => '1.9',
				'url' => 'http://go-mono.com/sources/monodoc',
				'src' => 'zip',
			       },
   'mono-tools'                => {
				'ver' => '1.9',
				'url' => 'http://go-mono.com/sources/mono-tools',
				'src' => 'tar.bz2',
			       },
  );

#
# End Config Options
################################################################################