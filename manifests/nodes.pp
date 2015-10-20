node 'ip-172-31-50-31.ec2.internal' {
  file { '/tmp/hello':
    content => 'Hello World: This is awesome',
  }

}

