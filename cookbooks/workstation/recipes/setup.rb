package 'tree' do
    action :install
end

package 'git' do
    action :install
end


package 'ntp' do
    action :install
end

package 'apache2'

node['ipaddress']
node['memory']['total']



file '/etc/motd' do
    content "This server is the property of chef
    HOSTNAME: #{node['hostname']}
    IPADDRESS: #{node['ipaddress']}.
    CPU: #{node['cpu']['0']['mhz']}
    MEMORY: #{node['memory']['total']}
"

  owner 'root'
  group 'root'
  action :create
end
