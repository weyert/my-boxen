class projects::extjs {

  notify { 'class projects::extjs declared': }

  boxen::project { 'extjs':
    dotenv        => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => true,
    source        => 'weyert/extjs_docs',
    dir           => '/Users/weyertdeboer/Development/Frameworks/ExtJS/4.1.3'
  }
}