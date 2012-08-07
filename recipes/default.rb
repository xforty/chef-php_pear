#
# Cookbook Name:: php_pear
# Recipe:: default
#
# Copyright 2012, xforty technologies
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

include_recipe "php"
package "wget"

execute "download_pear" do
  cwd "#{node['php']['pear']['download']['folder']}"
  command "wget #{node['php']['pear']['download']['url']}/#{node['php']['pear']['download']['filename']}"
  not_if { File.exists?("/tmp/#{node['php']['pear']['download']['filename']}") }
end

execute "install_pear" do
  cwd "#{node['php']['pear']['download']['folder']}"
  command "php #{node['php']['pear']['download']['filename']}"
end
