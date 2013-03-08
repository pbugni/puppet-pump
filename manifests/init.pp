# == Class: pump
#
# Installs suite of tools used for collection, storage and
# visualization of system and application data and utilization.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { pump:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Anikate Singh <aniksing@uw.edu>
# Paul Bugni <pbugni@u.washington.edu>
#
# === Copyright
#
# Copyright 2013 University of Washington
#
class pump {
  include pump::graphite
  include pump::statsd
  include pump::pump_rsync
  include pump::post_install_daemon
  include pump::examples
}
