class people::weyert::osx_defaults {


  # Common OSX default configurations
 # OS X Configuration
  boxen::osx_defaults { 'Disable Dashboard':
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => 'YES'
  }
  boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => 'true'
  }
  boxen::osx_defaults { 'Disable press-and-hold character picker':
    key    => 'ApplePressAndHoldEnabled',
    domain => 'NSGlobalDomain',
    value  => 'false'
  }
  boxen::osx_defaults { 'Save to disk, not to iCloud by default':
    key    => 'NSDocumentsSaveNewDocumentsToCloud',
    domain => 'NSGlobalDomain',
    value  => 'false'
  }
  boxen::osx_defaults { 'Expand save panel by default':
    key    => 'NSNavPanelExpandedStateForSaveMode',
    domain => 'NSGlobalDomain',
    value  => 'true'
  }
  boxen::osx_defaults { 'Expand print panel by default':
    key    => 'PMPrintingExpandedStateForPrint',
    domain => 'NSGlobalDomain',
    value  => 'true'
  }
  boxen::osx_defaults { 'Make function keys do real things, and not apple things':
    key    => 'com.apple.keyboard.fnState',
    domain => 'NSGlobalDomain',
    value  => 'true'
  }
  boxen::osx_defaults { 'Avoid creating .DS_Store files on network volumes':
    key    => 'DSDontWriteNetworkStores',
    domain => 'com.apple.desktopdervices',
    value  => 'true'
  }
  
}