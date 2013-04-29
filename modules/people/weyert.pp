class people::weyert {
  include people::weyert::params
  include people::weyert::applications
  include people::weyert::repositories
  include people::weyert::config

  notify { 'class people::weyert declared': }
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
}