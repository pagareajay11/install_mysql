#
# Cookbook:: assignment_mysql
# Recipe:: config
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#Configured the mysql uing supermarket

mysqlpass = data_bag_item("mysql", "mysql_password")
mysql_service "mysqldefault" do
  version '8.0'
  initial_root_password mysqlpass["password"]
  action [:create, :start]
end

cookbook_file "/etc/my.cnf" do
   source "my.cnf"
   mode "0644"
end

