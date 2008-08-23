package GSB::Administration;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%administration
		    %administration_gnome);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

# src/administration from GNOME
our %administration_gnome =
  (
   'pessulus'            => '2.16.4',
   'sabayon'             => '2.22.0',
   'liboobs'             => '2.22.0',
   'system-tools-backends'  => '2.6.0',
   'gnome-system-tools'     => '2.22.0',
  );

# src/administration from Elsewhere
our %administration =
  (
   'parted'    => {
	   'ver' => '1.8.8',
	   'url' => 'http://ftp.gnu.org/gnu/parted',
	   'src' => 'tar.bz2',
	   },
   'gparted'    => {
                 'ver' => '0.3.8',
                 'url' => 'http://dfn.dl.sourceforge.net/sourceforge/gparted',
                 'src' => 'tar.bz2',
                },
   'python-ldap'         => {
                 'ver' => '2.3.4',
                 'url' => 'http://kent.dl.sourceforge.net/sourceforge/python-ldap',
                 'src' => 'tar.gz',
                            },
   'slapt-update-notifier'         => {
                 'ver' => '0.2.1',
                 'url' => 'http://software.jaos.org/source/slapt-update-notifier',
                 'src' => 'tar.gz',
                            },
   'gslapt'    => {
             'url' => 'http://software.jaos.org/source/gslapt',
             'ver' => '0.4.0',
             'src' => 'tar.gz',
                  },
   'pycups'    => {
             'url' => 'http://cyberelk.net/tim/data/pycups/',
             'ver' => '1.9.40',
             'src' => 'tar.bz2',
                  },
   'pm-utils'    => {
             'url' => 'http://pm-utils.freedesktop.org/releases',
             'ver' => '1.1.2.3',
             'src' => 'tar.gz',
                  },
   'system-config-printer'    => {
             'url' => 'http://cyberelk.net/tim/data/system-config-printer/1.0.x/',
             'ver' => '1.0.4',
             'src' => 'tar.bz2',
                  },
   'pybackpack'         => {
	 'url' => 'http://andrewprice.me.uk/projects/pybackpack/download/',
	 'ver' => '0.5.4',
	 'src' => 'tar.gz',
		},
   'rdiff-backup'         => {
		 'url' => 'http://savannah.nongnu.org/download/rdiff-backup',
		 'ver' => '1.1.16',
		 'src' => 'tar.gz',
		},
   'librsync'    => {
	 'url' => 'http://kent.dl.sourceforge.net/sourceforge/librsync/',
	 'ver' => '0.9.7',
	 'src' => 'tar.gz',
		},
  );

#
# End Config Options
################################################################################
