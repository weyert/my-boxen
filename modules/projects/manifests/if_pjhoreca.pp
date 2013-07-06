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

	# project preparation
	$version = '5.3.23'
	include php::5_3_23
	include php::fpm::5_3_23

	php::project { 'if_pjhoreca':
	    elasticsearch => false,
	    mysql         => true,
	    nginx         => 'php/nginx/nginx.conf.erb',
	    redis         => false,
	    php           => $version,
		source        => 'weyert/project_default',
		dir           => '/Users/weyertdeboer/Development/Innerfuse/Projects/Personal/if_pjhoreca'
	}
}