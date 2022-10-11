#
# Cookbook:: assignment_mysql
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#include_recipe 'assignment_mysql::install_mysql'
include_recipe 'assignment_mysql::config'
#include_recipe 'assignment_mysql::clean-up'