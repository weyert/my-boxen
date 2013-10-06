class people::weyert::applications {

	# User-specific applications
	include transmission
	#include onepassword
	#include sizeup

	include dropbox
	include spotify
	include skype
	include adium	

	# Editors
	include wedge
	include textual
	include screen
	include sublime_text_2
	include textmate

	# Browsers
	include chrome::canary
  	include chrome::dev  	
	include firefox
	include firefox::nightly

	# Development tools
	#include charles
	include sourcetree
	include sequel_pro
	include vmware_fusion

	# Jetbrains products
	include phpstorm
	class { 'intellij':
	    edition => 'community',
	    version => '12.1.5'
	}

	# Custom applications
	#	package { 'wget': }
	package { 'unrar': }
	package { 'libpng': }

	# Dearchiving application for the Mac
	package { 'Rucksack':
		source 	 => 'http://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver-2385.zip',
		provider => compressed_app
	}
}
