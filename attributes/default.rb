#
# Cookbook Name:: ntp-cookbook
# Attributes:: default
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

case platform
when "debian", "ubuntu"
  	default[:ntp][:service] = "ntp"
when "redhat", "centos", "fedora", "rhel"
	default[:ntp][:service] = "ntpd"
else 
	default[:ntp][:service] = "ntpd" 
end
