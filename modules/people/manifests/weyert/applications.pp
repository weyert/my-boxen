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

    package { 'VirtualHostX':
      source   => 'http://dl.clickontyler.com/virtualhostx/virtualhostx40_4.0.6.zip',
      provider => 'compressed_app'
    }
}