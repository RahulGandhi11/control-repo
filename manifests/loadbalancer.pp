node 'server3.example.com' {
  include ::haproxy
  haproxy::listen { 'lb-01':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '80',
  }
  haproxy::balancermember { 'server2.example.com':
    listening_service => 'lb-01',
    server_names      => 'server2.example.com',
    ipaddresses       => '192.168.122.168',
    ports             => '8081',
    options           => 'check',
  }
  haproxy::balancermember { 'server1.example.com':
    listening_service => 'lb-01',
    server_names      => 'server1.example.com',
    ipaddresses       => '192.168.122.154',
    ports             => '8080',
    options           => 'check',
  }
}
