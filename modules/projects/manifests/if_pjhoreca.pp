class projects::if_pjhoreca {

	notify { 'class projects::if_pjhoreca declared': }

	# include some provided versions
	include nodejs::v0_10
	include nodejs::v0_8_8

	# install any arbitrary nodejs version
	nodejs { 'v0.10.1': }

	class { 'nodejs::global': version => 'v0.10.0' }

	# install some npm modules
	# Yeoman tools
	nodejs::module { 'yo': node_version => 'v0.10' }
	nodejs::module { 'grunt-cli': node_version => 'v0.10' }
	nodejs::module { 'bower': node_version => 'v0.10' }

	boxen::project { 'if_pjhoreca':
		dotenv        => false,
		elasticsearch => false,
		mysql         => false,
		nginx         => true,
		source        => 'weyert/project_default',
		dir           => '/Users/weyertdeboer/Development/Innerfuse/Projects/Personal/if_pjhoreca/workspace/www'
	}
}