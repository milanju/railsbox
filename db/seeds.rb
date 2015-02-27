servers = [
  { identifier: 'nginx_unicorn',   name: 'nginx + unicorn',   default: true },
  { identifier: 'nginx_passenger', name: 'nginx + passenger'                }
]

share_types = [
  { identifier: 'nfs',        name: 'NFS',       default: true },
  { identifier: 'smb',        name: 'SMB'                      },
  { identifier: 'virtualbox', name: 'VirtualBox'               }
]

postgresql_extensions = [
  { identifier: 'hstore'  },
  { identifier: 'citext'  },
  { identifier: 'postgis' }
]

databases = [
  { identifier: 'postgresql', name: 'PostgreSQL', extensions: postgresql_extensions },
  { identifier: 'mysql',      name: 'MySQL'                                         },
  { identifier: 'mongodb',    name: 'MongoDB'                                       },
  { identifier: 'redis',      name: 'Redis'                                         }
]

operating_systems = [
  { identifier: 'ubuntu/precise32', name: 'Ubuntu Precise Pangolin 12.04 LTS 32'               },
  { identifier: 'ubuntu/precise64', name: 'Ubuntu Precise Pangolin 12.04 LTS 64'               },
  { identifier: 'ubuntu/trusty32',  name: 'Ubuntu Trusty 14.04 LTS 32'                         },
  { identifier: 'ubuntu/trusty64',  name: 'Ubuntu Trusty 14.04 LTS 64',          default: true }
]

rubies = [
  { identifier: '1.8.6'                   },
  { identifier: '1.8.7'                   },
  { identifier: '1.9.1'                   },
  { identifier: '1.9.2'                   },
  { identifier: '1.9.3'                   },
  { identifier: '2.0.0'                   },
  { identifier: '2.1.1'                   },
  { identifier: '2.1.2'                   },
  { identifier: '2.1.3'                   },
  { identifier: '2.1.4'                   },
  { identifier: '2.1.5'                   },
  { identifier: '2.2.0',    default: true },
  { identifier: '2.2-head'                },
]

system_rubies = [
  { identifier: 'ruby1.8'                 },
  { identifier: 'ruby1.9.1'               },
  { identifier: 'ruby2.1',  default: true },
  { identifier: 'ruby2.2'                 }
]

ruby_installers = [
  { identifier: 'rvm',     name: 'RVM',            rubies: rubies,       default: true },
  { identifier: 'rbenv',   name: 'rbenv',          rubies: rubies                      },
  { identifier: 'package', name: 'System package', rubies: system_rubies               },
]

system_packages = [
  { identifier: 'graphics', name: 'Graphics Kit', packages: ['imagemagick']                                                 },
  { identifier: 'qt',       name: 'QT Kit',       packages: ['qt5-default', 'libqt5webkit5-dev']                            },
  { identifier: 'curl',     name: 'curl',         packages: ['curl', 'libcurl3', 'libcurl3-gnutls', 'libcurl4-openssl-dev'] }
]

rails_versions = [
  { identifier: '2', name: 'Rails 2.0+', command: 'script/delayed_job run' },
  { identifier: '3', name: 'Rails 3.0+', command: 'script/delayed_job run' },
  { identifier: '4', name: 'Rails 4.0+', command: 'bin/delayed_job run' }
]

background_jobs = [
  { identifier: 'delayed_job', name: 'Delayed::Job', rails_version: rails_versions },
  { identifier: 'sidekiq',     name: 'Sidekiq'                                     },
  { identifier: 'resque',      name: 'Resque'                                      }
]
