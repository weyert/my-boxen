class people::weyert::applications {

	# User-specific applications
	include transmission
	include onepassword
	include sizeup

	# Editors
	include wedge
	include textual
	include screen

	# Browsers
	include chrome::canary
  	include chrome::dev  	
	include firefox::nightly

	# Development tools
	include charles
	include vmware_fusion

	# Jetbrains products
	include phpstorm
	class { 'intellij':
	    edition => 'community',
	    version => '12.1.3'
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
