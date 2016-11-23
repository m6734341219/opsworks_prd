#
# timezone japan!!
#

template "/etc/sysconfig/clock" do
  notifies :run, "execute[timezone_update]", :immediately
end

execute "timezone_update" do
  command "cp /usr/share/zoneinfo/Japan /etc/localtime"
  action :nothing
end
