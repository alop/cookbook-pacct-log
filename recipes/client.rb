# recipe pacct-log:: client

include_recipe "pacct-log::default"

if Chef::Config[:solo]
  Chef::Log.warn("This recipe uses search, Chef Solo does not support search.")
else
log_host = search(:node, "role:infra-logging" ).first
end
log_dest = log_host && log_host['hostname']
dest_dir = node['hostname']

cron "push_acct" do
  hour "0"
  minute "0"
  command "/usr/bin/rsync -aq /var/log/account/pacct %s::logs/%s" % [log_dest, dest_dir]
end
