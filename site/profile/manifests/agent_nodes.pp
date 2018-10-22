class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm':
  ports => ['10080:80'],}
  dockeragent::node { 'db.puppet.vm':
  ports => ['20080:80'],}

}
