#
# httpd.conf x-forwarded-for
#

ruby_block "add %{X-Forwarded-For}i to LogFormat" do
  path     = "/etc/httpd/conf/httpd.conf"
  content  = File.read path
  notifies :restart, "service[httpd]"

  not_if do
    content.match /^LogFormat.*%{X-Forwarded-For}i.*combined$/
  end

  block do
    File.open path, "w" do |file|
      file.write content.gsub(/^LogFormat "(.+)" (\S*)combined$/) {%(LogFormat "#{Regexp.last_match 1} %{X-Forwarded-For}i" #{Regexp.last_match 2}combined)}
    end
  end
end

service "httpd" do
  action :nothing
end
