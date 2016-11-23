#
# locale
#

# Execute `locale`.
execute "locale" do
  command <<-EOH
    sed -i.org -e "s/en_US.UTF-8/ja_JP.UTF-8/g" /etc/sysconfig/i18n
  EOH
end