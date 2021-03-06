#
# Cookbook Name:: factorialapp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
app_path = "/opt/devops-project"
if not ::File.exists?(app_path)
	app_path = "/Alain/vagrant/VM/devops-project"
end

package "python-pip"

execute "install-python-module" do
	command "pip install -r #{app_path}/requirements.txt"
end
