MRuby::Build.new do |conf|

  toolchain :gcc

  conf.gembox 'full-core'

  conf.cc do |cc|
    cc.flags << '-fPIE'
  end

  conf.gem :github => 'iij/mruby-env'
  conf.gem :github => 'iij/mruby-dir'
  conf.gem :github => 'iij/mruby-digest'
  conf.gem :github => 'iij/mruby-process'
  conf.gem :github => 'mattn/mruby-json'
  conf.gem :github => 'mattn/mruby-onig-regexp'
  conf.gem :github => 'matsumotory/mruby-redis'
  # conf.gem :github => 'matsumotory/mruby-memcached'
  conf.gem :github => 'matsumotory/mruby-userdata'
  conf.gem :github => 'matsumotory/mruby-uname'
  conf.gem :github => 'matsumotory/mruby-mutex'
  conf.gem :github => 'matsumotory/mruby-localmemcache'

  # ngx_mruby extended class
  conf.gem './mrbgems/ngx_mruby_mrblib'
end
