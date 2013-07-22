class rvm::passenger::apache::centos::pre {
  # Dependencies
  if ! defined(Package['httpd'])       { package { 'httpd':       ensure => present } }
  if ! defined(Package['httpd-devel']) { package { 'httpd-devel': ensure => present } }
  # disable until I figure out how to resolves this dependency issue
  # with puppetlabs-apache described here http://tinyurl.com/kewgjjo
  # if ! defined(Package['mod_ssl'])     { package { 'mod_ssl':     ensure => present } }
}
