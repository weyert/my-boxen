class people::weyert::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  $my_username  = 'weyertdeboer'
  $my_homedir   = "/Users/${people::weyert::params::my_username}"
  $my_sourcedir = $::boxen_srcdir
}