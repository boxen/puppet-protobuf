# Public: Install Protobuf
#
# Examples
#
#   include protobuf
#
class protobuf {
  include homebrew

  homebrew::formula { 'protobuf':
    source => 'puppet:///modules/protobuf/brews/protobuf.rb',
    before => Package['boxen/brews/protobuf'] ;
  }

  package { 'boxen/brews/protobuf':
    ensure  => '2.6.1-boxen1',
  }
}
