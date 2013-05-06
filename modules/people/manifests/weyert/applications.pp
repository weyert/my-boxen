class people::weyert::applications {

	# User-specific applications
	include transmission
	include onepassword

	# Editors
	include wedge
	include textual
	include screen

	# Browsers
	include chrome::canary
	# include firefox::nightly

	# Development tools
	include phpstorm
	include vmware_fusion

	# Custom applications
	package { 'wget': }

	package { 'Timer':
		source   => 'http://www.apimac.com/download/timer.dmg',
		provider => appdmg,
	}

	package { 'Rucksack':
		source 	 => 'http://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver-2385.zip',
		provider => compressed_app
	}

	package { 'VirtualHostX':
		source   => 'http://dl.clickontyler.com/virtualhostx/virtualhostx40_4.0.6.zip',
		provider => 'compressed_app'
	}
}
