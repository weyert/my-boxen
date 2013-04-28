include people::weyert::applications
include people::weyert::osx_defaults

class people::weyert {
  include homebrew

  $home      = "/Users/${::luser}"
  $devfolder = "${home}/Development"
  $dotfiles_dir = "${boxen::config::srcdir}/.oh-my-zsh"

  repository { $dotfiles_dir:
    source => "${::github_user}/oh-my-zsh"
  }

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

  # User-specific applications
  include transmission
  include phpstorm
  include textual
  include vmware_fusion
  include screen
  include onepassword
  include evernote
  include wedge
# include iterm2::stable
#  include istatmenus4


  # Install dotfiles
  # repository { $dotfiles:
  #   source  => 'weyert/dotfiles',
  #   notify => Exec['install-dotfiles']
  # }

  # exec { "install-dotfiles":
  #   refreshonly => true,
  #   command     => 'rake',
  #   cwd         => "${dotfiles}"
  # }

#  $dotfiles  = "${devfolder}/dotfiles"
#  file { $devfolder: 
#  	ensure => "directory"
#	}
#  repository { $dotfiles:
#    source  => 'weyert/dotfiles',
#    require => File[$devfolder]
#  }
}