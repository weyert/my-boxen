include people::weyert::applications

class people::weyert {
  include homebrew

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/my"

#  $dotfiles  = "${devfolder}/dotfiles"
#	file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'weyert/dotfiles',
#    require => File[$devfolder]
#  }
}
