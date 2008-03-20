package GSB::Extras;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(
                    %extras
                    %extras_gnome
                   );
our @EXPORT_OK = qw();
our $VERSION   = 0.03;


################################################################################
# Config Options for EXTRAS
#

# src/extras
our %extras_gnome =
  (
   'brasero'             => '0.6.90',
   'ghex'                => '2.8.2',
  );


# src/extras
our %extras =
  (
   'balsa'               => {
			     'ver' => '2.3.22',
			     'url' => 'http://balsa.gnome.org',
			     'src' => 'tar.bz2',
			    },
   'deluge'              => {
                 'ver' => '0.5.8.6',
                 'url' => 'http://download.deluge-torrent.org/source/0.5.8.6',
                 'src' => 'tar.gz',
                            },
   'devede'              => {
                 'ver' => '3.6',
                 'url' => 'http://www.rastersoft.com/descargas',
                 'src' => 'tar.bz2',
                            },
   'dvdauthor'              => {
                 'ver' => '0.6.14',
                 'url' => 'http://heanet.dl.sourceforge.net/sourceforge/dvdauthor',
                 'src' => 'tar.gz',
                            },
   'dvdrip'              => {
                 'ver' => '0.98.8',
                 'url' => 'http://www.exit1.org/dvdrip/dist',
                 'src' => 'tar.gz',
                            },
   'easytag'             => {
			     'ver' => '2.1.5',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/easytag',
			     'src' => 'tar.bz2',
			    },
   'gdesklets'           => {
			     'ver' => '0.36',
			     'url' => 'http://gdesklets.de/files',
			     'src' => 'tar.bz2',
			    },
   'gimp'                => {
			     'ver' => '2.4.5',
			     'url' => 'ftp://ftp.gimp.org/pub/gimp/v2.4',
			     'src' => 'tar.bz2',
			    },
   'gnonlin'             => {
                 'ver' => '0.10.9',
                 'url' => 'http://gstreamer.freedesktop.org/src/gnonlin',
                 'src' => 'tar.bz2',
                            },
  'grip'                => {
                 'ver' => '3.3.1',
                 'url' => 'http://heanet.dl.sourceforge.net/sourceforge/grip',
                 'src' => 'tar.gz',
                            },
   'gtkam'               => {
			     'ver' => '0.1.14',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gphoto',
			     'src' => 'tar.bz2',
			    },
   'gtkpod'              => {
			     'ver' => '0.99.12',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtkpod',
			     'src' => 'tar.gz',
			    },
   'jokosher'            => {
			     'ver' => '0.9',
			     'url' => 'http://www.jokosher.org/downloads/source',
			     'src' => 'tar.gz',
			    },
   'libesmtp'            => {
			     'ver' => '1.0.4',
			     'url' => 'http://www.stafford.uklinux.net/libesmtp',
			     'src' => 'tar.bz2',
			    },
  'MPlayer'            => {
			     'ver' => '1.0rc2',
			     'url' => 'http://www1.mplayerhq.hu/MPlayer/releases',
			     'src' => 'tar.bz2',
			    },
   'pstoedit'            => {
			     'ver' => '3.45',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/pstoedit',
			     'src' => 'tar.gz',
			    },
   'python-ldap'         => {
                 'ver' => '2.3.1',
                 'url' => 'http://heanet.dl.sourceforge.net/sourceforge/python-ldap',
                 'src' => 'tar.gz',
                            },
   'slapt-update-notifier'         => {
                 'ver' => '0.2.1',
                 'url' => 'http://software.jaos.org/source/slapt-update-notifier',
                 'src' => 'tar.gz',
                            },
   'streamripper'        => {
			     'ver' => '1.62.3',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/streamripper',
			     'src' => 'tar.gz',
			    },
   'sylpheed'            => {
			     'ver' => '2.4.8',
			     'url' => 'http://sylpheed.good-day.net/sylpheed/v2.4',
			     'src' => 'tar.bz2',
			    },
   'tre'            => {
			     'ver' => '0.7.5',
			     'url' => 'http://laurikari.net/tre',
			     'src' => 'tar.bz2',
			    },
   'vcdimager'            => {
			     'ver' => '0.7.23',
			     'url' => 'http://mirrors.kernel.org/gnu/vcdimager',
			     'src' => 'tar.gz',
			    },
   'vlc'            => {
			     'ver' => '0.8.6e',
			     'url' => 'http://download.videolan.org/pub/videolan/vlc/0.8.6e/',
			     'src' => 'tar.bz2',
			    },
   'wxGTK'            => {
			     'ver' => '2.8.7',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/wxwindows',
			     'src' => 'tar.gz',
			    },
  );

#
# End Config Options
################################################################################
