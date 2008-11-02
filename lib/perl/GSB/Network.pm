package GSB::Network;
use Exporter;

use strict;
use warnings;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%network_gnome %network_external);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Config Options
#

our %network_gnome =
  (
   'ekiga'                  => '3.0.1',
   'empathy'	            => '2.24.1',
   'gnome-user-share'       => '0.40',
   'gnome-phone-manager'     => '0.60',
  );

our %network_external =
  (
   'balsa'       => {
		'ver' => '2.3.26',
		'url' => 'http://balsa.gnome.org',
		'src' => 'tar.bz2',
		 },
   'deluge'     => {
                 'ver' => '1.0.4',
                 'url' => 'http://download.deluge-torrent.org/source/1.0.3',
                 'src' => 'tar.gz',
                   },
  'sylpheed'     => {
                  'ver' => '2.5.0',
                  'url' => 'http://sylpheed.good-day.net/sylpheed/v2.5',
                 'src' => 'tar.bz2',
                 },
  'telepathy-mission-control' => {
                 'url' => 'http://mesh.dl.sourceforge.net/sourceforge/mission-control',
                 'ver' => '4.67',
                 'src' => 'tar.gz'
                },
  'libjingle' => {
                 'url' => 'http://farsight.freedesktop.org/releases/libjingle',
                 'ver' => '0.3.12',
                 'src' => 'tar.gz'
                },
   'telepathy-glib'            => {
             'url' => 'http://telepathy.freedesktop.org/releases/telepathy-glib',
             'ver' => '0.7.17',
             'src' => 'tar.gz'
                        },
   'libtelepathy'            => {
             'url' => 'http://telepathy.freedesktop.org/releases/libtelepathy',
             'ver' => '0.3.3',
             'src' => 'tar.gz'
                        },
   'farsight'            => {
             'url' => 'http://farsight.freedesktop.org/releases/farsight',
             'ver' => '0.1.28',
             'src' => 'tar.gz'
                        },
   'gst-plugins-farsight'            => {
             'url' => 'http://farsight.freedesktop.org/releases/gst-plugins-farsight',
             'ver' => '0.12.9',
             'src' => 'tar.gz'
                        },
   'telepathy-butterfly'            => {
             'url' => 'http://telepathy.freedesktop.org/releases/telepathy-butterfly',
             'ver' => '0.3.2',
             'src' => 'tar.gz'
                        },
   'telepathy-salut'            => {
             'url' => 'http://telepathy.freedesktop.org/releases/telepathy-salut',
             'ver' => '0.3.5',
             'src' => 'tar.gz'
                        },
   'telepathy-gabble'            => {
             'url' => 'http://telepathy.freedesktop.org/releases/telepathy-gabble',
             'ver' => '0.7.13',
             'src' => 'tar.gz'
                        },
   'loudmouth'            => {
             'url' => 'http://ftp.imendio.com/pub/imendio/loudmouth/src',
             'ver' => '1.4.3',
             'src' => 'tar.bz2'
                        },
  );

#
# End Config Options
################################################################################
