# pacct-log:: server

include_recipe "pacct-log::default"


cookbook_file "/etc/default/rsync" do
  source "rsync"
  mode "0644"
end

template "/etc/rsyncd.conf" do
  source "rsyncd.conf.erb"
  variables(
    :domain => node['domain']
  )
  notifies :restart, "service[rsync]"
end

service "rsync" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

