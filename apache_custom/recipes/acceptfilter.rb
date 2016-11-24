#
# httpd.conf acceptfilter
#

bash "add AcceptFilter" do
  not_if 'grep "AcceptFilter"  /etc/httpd/conf/httpd.conf'

  code <<-EOC
    echo; >> /etc/httpd/conf/httpd.conf
    echo "AcceptFilter http none" >> /etc/httpd/conf/httpd.conf
    echo "AcceptFilter https none" >> /etc/httpd/conf/httpd.conf
  EOC
end