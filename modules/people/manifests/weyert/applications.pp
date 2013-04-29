class people::weyert::applications {

 	# User-specific applications
  	include transmission
  	include onepassword

  	# Editors
  	include wedge
    include evernote
  	include textual
  	include screen

    # Development tools
  	include phpstorm
  	include vmware_fusion

    # Custom applications
    package { 'Timer':
      source   => 'http://www.apimac.com/download/timer.dmg',
      provider => appdmg,
    }
}