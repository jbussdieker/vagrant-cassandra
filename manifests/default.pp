hiera_include('classes')

package { 'cassandra':
  ensure  => present,
  require => Apt::Source['cassandra'],
}
