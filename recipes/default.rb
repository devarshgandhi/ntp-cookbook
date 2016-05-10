#
# Cookbook Name:: ntp-cookbook
# Recipe:: default
#
# Copyright 2016, Devarsh Gandhi
# 
# Author :: Devarsh Gandhi (devarsh.gandhi4@gmail.com)
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

package "ntp" do
	action [:install]
end

service node[:ntp][:service] do
	service_name node[:ntp][:service]
	action [:enable,:start,:restart] 
end
	

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, resources(:service => node[:ntp][:service])
end
