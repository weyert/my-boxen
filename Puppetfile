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

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Internals
github "osx", 			"1.0.0"
github "dropbox", 		"1.1.0"
github "caffeine",		"1.0.0"
github "alfred",		"1.0.2"
github "java",			"1.1.0"
github "transmit",		"1.0.0"
github "wget",			"1.0.0"

# Misc
github "spotify",		"1.0.0"
github "istatmenus4", 	"1.0.0"
github "skitch",		"1.0.0"

# Server technologies
github "mysql", 		"1.1.0"
github "vagrant", 		"2.0.6"
github "heroku", 		"2.0.0"

#mod, <module name>, <version or tag>, <source>

# Communications
github "skype",     	 "1.0.2"
github "adium",			 "1.1.1"

# Editors
github "sublime_text_2", "1.1.0"
github "textmate", 	 	 "1.1.0"
github "mou",			 "1.0.0"

# Developer tools
github "virtualbox",	 "1.0.2"
github "imageoptim",	 "0.0.2"
github "sourcetree",	 "0.0.2"
github "sequel_pro",	 "1.0.0"

# Browsers
github "firefox", 		 "1.0.5"
github "chrome", 	     "1.1.0"


# Personal Applications of weyertdeboer
github "transmission",	"1.0.0"
github "vlc",			"1.0.1"
github "phpstorm", 	    "1.0.2"
github "textual",		"1.0.0"
github "vmware_fusion",	"1.0.0"
github "things",		"1.0.0"
github "screen",		"1.0.0"
github "onepassword",	"1.0.0"
github "evernote",		"1.0.1", :repo = "jasonamyers/puppet-evernote.git"
