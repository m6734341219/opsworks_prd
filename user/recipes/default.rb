#
# user
#

group 'cm-user' do
  group_name 'cm-user'
  gid        502
  action     [:create, :manage]
end

group 'cm-mon' do
  group_name 'cm-mon'
  gid        503
  action     [:create, :manage]
end

user 'batch' do
  uid      1000
  group    'apache'
  home     nil
  shell    '/bin/bash'
  password nil
  supports :manage_home => true, :non_unique => false
  action   [:create, :manage]
end

user 'rfdevlog' do
  uid      1001
  group    'apache'
  home     nil
  shell    '/bin/bash'
  password nil
  supports :manage_home => true, :non_unique => false
  action   [:create, :manage]
end

user 'cm-user' do
  uid      4001
  group    'cm-user'
  home     nil
  shell    '/bin/bash'
  password nil
  supports :manage_home => true, :non_unique => false
  action   [:create, :manage]
end

user 'cm-mon' do
  uid      4002
  group    'cm-mon'
  home     nil
  shell    '/bin/bash'
  password nil
  supports :manage_home => true, :non_unique => false
  action   [:create, :manage]
end
