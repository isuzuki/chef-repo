package "httpd" do
  action :install
end

service "httpd" do
  supports :status => true, :restart => true
  action [:enable, :start]
end

service "iptables" do
  action [:stop, :disable]
end
