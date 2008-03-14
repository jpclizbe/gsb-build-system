package GSB::Platform;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%platform
                    %platform_reqs);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Config Options for GNOME
#

our %platform =
  (
   'gail'                => '1.22.0',
   'GConf'               => '2.22.0',
   'gnome-common'        => '2.20.0',
   'gnome-icon-theme'    => '2.20.0',
   'gnome-keyring'       => '2.22.0',
   'gnome-mime-data'     => '2.18.0',
   'gnome-vfs'           => '2.22.0',
   'gtk-engines'         => '2.14.0',
   'intltool'            => '0.37.1',
   'libbonobo'           => '2.22.0',
   'libbonoboui'         => '2.22.0',
   'libbtctl'            => '0.10.0',
   'libgnome'            => '2.22.0',
   'libgnomecanvas'      => '2.20.1.1',
   'libgnomeui'          => '2.22.01',
   'liboobs'             => '2.22.0',
   'libsoup'             => '2.4',
   'ORBit2'              => '2.14.12',
   'pygobject'           => '2.14.1',
   'pygtk'               => '2.12.1',
   'pyorbit'             => '2.14.3',
   'system-tools-backends'  => '2.6.0',
  );


# these are packages from freedesktop.org
our %platform_reqs =
  (
   'avahi'               => {
                             'ver' => '0.6.22',
                             'url' => 'http://www.avahi.org/download/',
                             'src' => 'tar.gz',
                            },
   'dbus-python'         => {
                             'url' => 'http://dbus.freedesktop.org/releases/dbus-python',
                             'ver' => '0.82.4',
                             'src' => 'tar.gz',
                            },				  
   'icon-naming-utils' => {
	                 'url' => 'http://tango-project.org/releases/',
			 'ver' => '0.8.6',
			 'src' => 'tar.bz2',
			},
   'libdaemon'           => {
                             'ver' => '0.12',
                             'url' => 'http://0pointer.de/lennart/projects/libdaemon/',
                             'src' => 'tar.gz',
                            },
   'shared-mime-info'    => {
			     'url' => 'http://freedesktop.org/~hadess/',
			     'ver' => '0.23',
			     'src' => 'tar.bz2',
			    },
   'pulseaudio'             => {
                             'ver' => '0.9.9',
                             'url' => 'http://0pointer.de/lennart/projects/pulseaudio/',
                             'src' => 'tar.gz',
                            },
   'pycairo'             => {
                             'ver' => '1.4.12',
                             'url' => 'http://cairographics.org/releases/',
                             'src' => 'tar.gz',
                            },
   'rarian'             => {
                             'ver' => '0.8.0',
                             'url' => 'http://rarian.freedesktop.org/Releases/',
                             'src' => 'tar.bz2',
                            },
   'XML-Simple'      => {
	                 'url' => 'http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/',
                         'ver' => '2.18',
                         'src' => 'tar.gz', 
                        },
   'XML-Twig'      => {
	                 'url' => 'http://xmltwig.com/xmltwig/',
                         'ver' => '3.32',
                         'src' => 'tar.gz',
                        },
  );


#
# End Config Options
################################################################################
