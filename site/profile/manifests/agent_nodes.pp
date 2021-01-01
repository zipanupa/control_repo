class profile::agent_nodes {
  include dockeragent
  docketagent::node {'web.puppet.vm':}
}
