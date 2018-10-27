class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm':,
  ports => ['8140:8140'],}
  dockeragent::node { 'db.puppet.vm':,
  ports => ['8140:8140'],}
  dockeragent::node { 'minetest.puppet.vm':,
  ports => ['8140:8140'],}
  host {'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2'
  }
  host {'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3'
  }
  host {'minetest.puppet.vm':
    ensure => present,
    ip     => '172.18.0.4'
  }  
}
