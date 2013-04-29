class people::weyert::config (
  $my_homedir   = $people::weyert::params::my_homedir,
  $my_sourcedir = $people::weyert::params::my_sourcedir,
  $my_username  = $people::weyert::params::my_username
) {

  # Common OSX default configurations
  boxen::osx_defaults { 'Change software update check frequency to daily':
    key    => 'ScheduleFrequency',
    domain => 'com.apple.SoftwareUpdate',
    value  => '1'
  } 

  # User-specific configuration
  boxen::osx_defaults { 'Set language and text formats':
    key    => 'AppleLocale',
    domain => 'NSGlobalDomain',
    value  => 'de_DE@currency=EUR'
  } 

  boxen::osx_defaults { 'Change to metric units':
    key    => 'AppleMetricUnits',
    domain => 'NSGlobalDomain',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Set measurement units to Centimeters':
    key    => 'AppleMeasurementUnits',
    domain => 'NSGlobalDomain',
    value  => 'Centimeters'
  } 



  # Networking
  boxen::osx_defaults { 'Avoid creating .DS_Store files on network volumes':
    key    => 'DSDontWriteNetworkStores',
    domain => 'com.apple.desktopservices',
    value  => 'true'
  } 

  # Time Machine
  boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
    key    => 'DoNotOfferNewDisksForBackup',
    domain => 'com.apple.TimeMachine',
    value  => 'true'
  } 

  # Menu bar
  boxen::osx_defaults { 'Disable the menu bar transparency':
    key    => 'AppleEnableMenuBarTransparency',
    domain => 'NSGlobalDomain',
    value  => 'false'
  } 

  boxen::osx_defaults { 'Hide remaining battery percentage':
    key    => 'ShowPercent',
    domain => 'com.apple.menuextra.battery',
    value  => 'NO'
  } 

  boxen::osx_defaults { 'Hide remaining battery time':
    key    => 'ShowTime',
    domain => 'com.apple.menuextra.battery',
    value  => 'NO'
  } 

  # Hot corners
  boxen::osx_defaults { 'Turn Off Resume on a Per App Basis ':
    key    => 'NSQuitAlwaysKeepsWindows',
    domain => '.GlobalPreferences',
    value  => 'NO'
  } 

  # Misc
  boxen::osx_defaults { 'Active corner top left: Mission Control':
    key    => 'wvous-tl-corner',
    domain => 'NSGlobalDomain',
    value  => '2'
  } 

  boxen::osx_defaults { 'Active corner top right: Mission Control':
    key    => 'wvous-tr-corner',
    domain => 'NSGlobalDomain',
    value  => '2'
  } 

  boxen::osx_defaults { 'Active corner bottom left: Application Windows':
    key    => 'wvous-bl-corner',
    domain => 'NSGlobalDomain',
    value  => '3'
  } 

  boxen::osx_defaults { 'Active corner bottom right: Desktop':
    key    => 'wvous-br-corner',
    domain => 'NSGlobalDomain',
    value  => '4'
  } 

  # Finder
  boxen::osx_defaults { 'Use Column view in all Finder windows by default':
    key    => 'FXPreferredViewStyle',
    domain => 'com.apple.Finder',
    value  => 'clmv'
  } 

  boxen::osx_defaults { 'Show Path bar in Finder':
    key    => 'ShowPathbar',
    domain => 'com.apple.Finder',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Hide Statusbar in Finder':
    key    => 'ShowStatusBar',
    domain => 'com.apple.Finder',
    value  => 'true'
  } 

  # Dock
  boxen::osx_defaults { 'Enable spring loading for all Dock items':
    key    => 'enable-spring-load-actions-on-all-items',
    domain => 'com.apple.dock',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Prevent app icons from staying in the Dock after being closed':
    key    => 'static-only',
    domain => 'com.apple.dock',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Autohide the Dock':
    key    => 'autohide',
    domain => 'com.apple.dock',
    value  => 'yes'
  } 

  boxen::osx_defaults { 'Dock Position on screen: bottom':
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => 'bottom'
  } 

  boxen::osx_defaults { 'Lock size of items in the Dock':
    key    => 'size-immutable',
    domain => 'com.apple.dock',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Enable magnification':
    key    => 'magnification',
    domain => 'com.apple.dock',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Dock Icon Size: 56 pixels':
    key    => 'tilesize',
    domain => 'com.apple.dock',
    value  => '56'
  } 

  # Keyboard
  boxen::osx_defaults { 'Disable the delay of keyboard input of the same keys':
    key    => 'KeyRepeat',
    domain => 'NSGlobalDomain',
    value  => '0'
  } 

  boxen::osx_defaults { 'Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)':
    key    => 'AppleKeyboardUIMode',
    domain => 'NSGlobalDomain',
    value  => '3'
  } 

  boxen::osx_defaults { 'Automatically illuminate built-in MacBook keyboard in low light':
    key    => 'kDim',
    domain => 'com.apple.BezelServices',
    value  => 'true'
  } 

  boxen::osx_defaults { 'Turn off keyboard illumination when computer is not used for 5 minutes':
    key    => 'kDimTime',
    domain => 'com.apple.BezelServices',
    value  => '300'
  } 

  # Bluetooth
  boxen::osx_defaults { 'Improve the quality of Bluetooth Audio':
    key    => '"Apple Bitpool Min (editable)"',
    domain => 'com.apple.BluetoothAudioAgent',
    value  => '40'
  } 

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
  boxen::osx_defaults { 'Enable press-and-hold character picker':
    key    => 'ApplePressAndHoldEnabled',
    domain => 'NSGlobalDomain',
    value  => 'true'
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
}