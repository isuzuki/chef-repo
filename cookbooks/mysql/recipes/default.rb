%w{mysql-community-server mysql-community-devel}.each do |p|
  package p do
    action :install
  end
end

service "mysqld" do
  supports :status => true, :restart => true
  action [:enable, :start]
end
