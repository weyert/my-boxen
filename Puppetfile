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

github "boxen", "3.0.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.10"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.4.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"
#github "nvm",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Required secondary utilities
github "pkgconfig",  "1.0.0"
github "pcre",       "1.0.0"
github "libtool",    "1.0.0"

# Internals
github "property_list_key", 	"0.1.0"
github "osx", 			"1.6.0"
github "zsh",			"1.0.0"

# Applications
github "dropbox", 		"1.1.2", :repo => "weyert/puppet-dropbox"
github "caffeine",		"1.0.0"
github "alfred",		"1.1.5"
github "java",			"1.1.2"
github "transmit",		"1.0.1"
github "wget",			"1.0.0"

# Misc
github "spotify",		"1.0.1"
github "istatmenus4", 	"1.0.0"
github "skitch",		"1.0.2"
#github "xquartz", 		"1.0.0"

# Server technologies
github "mysql", 		"1.1.5"
github "vagrant", 		"2.0.14", :repo => "weyert/puppet-vagrant"
github "heroku", 		"2.0.0"
github "redis",			"1.0.0"
github "php",			"1.1.2"

#mod, <module name>, <version or tag>, <source>

# Communications
github "skype",     	 	 "1.0.6"
github "adium",				 "1.2.0"

# Editors
github "sublime_text_2", 	 "1.1.2"
github "textmate", 	 	 	 "1.1.0"
github "mou",			 	 "1.1.3"

# Developer tools
github "virtualbox",	 	 "1.0.7", :repo => "weyert/puppet-virtualbox"
github "imageoptim",	 	 "0.0.2"
github "sourcetree",	 	 "1.0.0"
github "sequel_pro",	 	 "1.0.1"
github "mongodb",		 	 "1.0.4"
github "charles",		 	 "1.0.2"

# Browsers
github "firefox", 			 "1.1.3", :repo => "weyert/puppet-firefox"
github "chrome", 	     	 "1.1.1"


# Personal Applications of weyertdeboer
github "transmission",		 "1.0.0"
github "vlc",			 	 "1.0.5"
github "phpstorm", 	    	 "1.0.3" # 1.0.3
github "textual",		 	 "3.2.1"
github "vmware_fusion",		 "1.0.0", :repo => "weyert/puppet-vmware_fusion"
github "screen",		 	 "1.0.0"
github "wedge",         	 "1.0.1"
github "evernote",      	 "2.0.4"
github "iterm2",		 	 "1.0.3"
github "sizeup",		 	 "1.0.0"
github "intellij",		 	 "1.3.0"
