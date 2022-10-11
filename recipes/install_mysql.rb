#
# Cookbook:: assignment_mysql
# Recipe:: install_mysql
#
# Copyright:: 2022, The Authors, All Rights Reserved.

packages = ['mysql-server']

  packages.each do |p|
  package p do
  action :install
  end
  end

  # a = data_bag('mysql_bag')
  # puts "#{a}"




  # a.each do |item|
  #   i = data_bag_item('pass',item)
  #   puts "i :#{i}"
  #   puts "Item: #{i['id']}"
    
  #   end


