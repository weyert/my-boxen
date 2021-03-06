class people::weyert {
  require git::config

  include keytree::environment
  include people::weyert::params
  include people::weyert::applications
  include people::weyert::repositories
  include people::weyert::privacy_params
  include people::weyert::config

  notify { 'class people::weyert declared': }
  $home         = "/Users/${::luser}"
  $devfolder    = "${home}/Development"
  $dotfiles_dir = "${boxen::config::srcdir}/.oh-my-zsh"

  # Updating the global gitignore file
  notify { 'class people::weyert: Updating the global gitignore file ': }
  File <| title == "${git::config::configdir}/gitignore" |> {
    source  => undef,
    content => 'puppet:///modules/people/manifests/weyert/templates/gitignore_global',
    require => File["${git::config::configdir}"]
  }

  # Update the shell ZSH with oh-my-zsh support
  include zsh

  notify { 'class people::weyert: Updating the shell to use ZSH including ': }
  repository { $dotfiles_dir:
    source => "weyert/oh-my-zsh"
  }

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }
}
