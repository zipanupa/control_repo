class profile::agent_nodes {
  include samuelson-dockeragent
  samuelson-dockeragent::node { 'web.puppet.vm': }
  samuelson-dockeragent::node { 'db.puppet.vm': }
}
