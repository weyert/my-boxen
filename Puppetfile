# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.0.1"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",	 "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "3.2.9"
github "openssl",	 "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
#github "nvm",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Required secondary utilities
github "pkgconfig",  "1.0.0"
github "pcre",       "1.0.0"
github "libtool",	 "1.0.0"

# Internals
github "property_list_key", "0.1.0"
github "osx", 			"1.5.0"
github "zsh",			"1.0.0"

# Applications
github "dropbox", 		"1.1.1"
github "caffeine",		"1.0.0"
github "alfred",		"1.1.2"
github "java",			"1.1.2"
github "transmit",		"1.0.1"
github "wget",			"1.0.0"

# Misc
github "spotify",		"1.0.1"
github "istatmenus4", 	"1.0.0"
github "skitch",		"1.0.2"

# Server technologies
github "mysql", 		"1.1.3"
github "vagrant", 		"2.0.10"
github "heroku", 		"2.0.0"
github "redis",			"1.0.0"
github "php",			"1.1.1"

#mod, <module name>, <version or tag>, <source>

# Communications
github "skype",     	 "1.0.3"
github "adium",			 "1.1.1"

# Editors
github "sublime_text_2", "1.1.2"
github "textmate", 	 	 "1.1.0"
github "mou",			 "1.1.3"

# Developer tools
github "virtualbox",	 "1.0.5"
github "imageoptim",	 "0.0.2"
github "sourcetree",	 "1.0.0"
github "sequel_pro",	 "1.0.0"
github "mongodb",		 "1.0.4"
github "charles",		 "1.0.2"

# Browsers
github "firefox", 		 "1.1.1"
github "chrome", 	     "1.1.1"


# Personal Applications of weyertdeboer
github "transmission",	"1.0.0"
github "vlc",			"1.0.3"
github "phpstorm", 	    "1.0.3" # 1.0.3
github "textual",		"3.1.0"
github "vmware_fusion",	"1.0.0"
github "screen",		"1.0.0"
github "wedge",         "1.0.1"
github "evernote",      "2.0.4"
github "iterm2",		"1.0.3"
github "sizeup",		"1.0.0"
github "intellij",		"1.3.0"
