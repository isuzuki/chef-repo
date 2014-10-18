case node[:php][:version]
when '5.6'
  include_recipe 'yum-remi::php56'
  option = '--enablerepo=remi-php56'
when '5.5'
  include_recipe 'yum-remi::php55'
  option = '--enablerepo=remi-php55'
when '5.4'
  option = '--enablerepo=remi'
else
  raise '未対応のバージョンです'
end

%w{php}.each do |pkg|
  package pkg do
    options option
    action :install
  end
end
