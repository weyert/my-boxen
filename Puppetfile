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

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.1"
github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
github "go",         "1.0.0"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.3"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

#github "autoconf",   "1.0.0"
#github "nvm",       "1.0.0"

# Required secondary utilities
github "pcre",       "1.0.0"
github "libtool",    "1.0.0"

# Internals
github "property_list_key", 	"0.1.0"
github "osx", 			"2.2.2"
github "zsh",			"1.0.0"

# Applications
github "dropbox", 		"1.2.0" #, :repo => "weyert/puppet-dropbox"
github "caffeine",		"1.0.0"
github "alfred",		"1.1.7"
github "java",			"1.2.0"
github "transmit",		"1.0.2"
github "wget",			"1.0.1"

# Misc
github "spotify",		"1.0.1"
github "istatmenus4", 	"1.1.0"
github "skitch",		"1.0.2"
#github "xquartz", 		"1.1.1"

# Server technologies
github "mysql", 		"1.99.15"
github "vagrant", 		"3.0.4"
github "heroku", 		"2.1.1"
github "redis",			"3.0.3"
github "php",			"1.1.4"

#mod, <module name>, <version or tag>, <source>

# Communications
github "skype",     	 	 "1.0.8"
github "adium",				 "1.3.0"

# Editors
github "sublime_text_2", 	 "1.1.2"
github "textmate", 	 	 	 "1.1.0"
github "mou",			 	 "1.1.3"

# Developer tools
github "virtualbox",	 	 "1.0.10" #, :repo => "weyert/puppet-virtualbox"
github "imageoptim",	 	 "0.0.2"
github "sourcetree",	 	 "1.0.0"
github "sequel_pro",	 	 "1.0.1"
github "mongodb",		 	 "1.2.0"
github "charles",		 	 "1.0.4"

# Browsers
github "firefox", 			 "1.1.8" #, :repo => "weyert/puppet-firefox"
github "chrome", 	     	 "1.1.2"


# Personal Applications of weyertdeboer
github "transmission",		 "1.1.0"
github "vlc",			 	 "1.0.5"
github "phpstorm", 	    	 "1.0.3" # 1.0.3
github "textual",		 	 "4.1.1"
github "vmware_fusion",		 "1.1.0" #, :repo => "weyert/puppet-vmware_fusion"
github "screen",		 	 "1.0.0"
github "wedge",         	 "1.0.1"
github "evernote",      	 "2.0.5"
github "iterm2",		 	 "1.0.6"
github "sizeup",		 	 "1.0.0"
github "intellij",		 	 "1.4.0"
github "androidstudio", 	 "1.0.1"
