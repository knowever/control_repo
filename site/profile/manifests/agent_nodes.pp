class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm':
      ports => ["10080:80"],
  }
  dockeragent::node { 'db.puppet.vm':
      ports => ["20080:80"],
  }
  dockeragent::node { 'minetest.puppet.vm':
      ports => ["30080:80"],
  }
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
