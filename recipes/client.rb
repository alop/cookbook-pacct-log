# recipe pacct-log:: client

include_recipe "pacct-log::default"

log_host = search(:node, "role:logstash" ).first
log_dest = log_host && log_host['hostname']
dest_dir = node['hostname']

cron "push_acct" do
  hour "0"
  minute "0"
  command "/usr/bin/rsync -aq /var/log/account/pacct %s::logs/%s" % [log_dest, dest_dir]
end
