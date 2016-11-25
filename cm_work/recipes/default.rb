#
# cm
#

cookbook_file '/home/ec2-user/test.txt' do
  source 'test.txt'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0644'
end