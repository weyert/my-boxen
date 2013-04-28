include people::weyert::applications
include people::weyert::osx_defaults

class people::weyert {
  include homebrew

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"
}
