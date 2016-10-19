/* node 'ip-172-31-50-31.ec2.internal' {
  include memcached
 
  class centoslike {
   notify { 'This is a centos 7 OS': }
   }
  class debianlike {
    notify { ' This is debian': }
  }



  if $::operatingsystem == 'RedHat' {
    notify { 'Running on Redhat': }
   } else { 
    notify { 'Non-Redhat system detected': }
  }
  
  $input = 'Puppet extra is better than manual extra configuration'
  if $input =~ /(.*) is better than (.*)/ {
    notify { "You said '${0}'. Looks like you are comparing '${1}' to  ${2}!": }
  }  
  
*/

  class centoslike {
    notify { 'This is a centos 7 OS and it is scary': }
   }
  class debianlike {
    notify { ' This is debian': }
  }

  case $::operatingsystem {
    'debain': {
      include debianlike
     }
     'redhat': {
        include centoslike
    }
   }
#}







 #  notify { ' This is a 
  
 # file { '/tmp/hello':
   # content => 'Hello World: This is awesome',
  #}
  
  #package { 'vim-enhanced':
  #  ensure => installed,
 # }
  #file { '/tmp/test.conf':
  #  source => '/etc/puppet/test/test.conf',
 # }
#}

This a smiple test change to a branch - From Immediate office

