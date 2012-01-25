#
# Cookbook Name:: pear
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

execute "download_pear" do
  cwd "/tmp"
  command "wget http://pear.php.net/go-pear.phar"
  not_if { File.exists?("/tmp/go-pear.phar") }
end

execute "install_pear" do
  cwd "/tmp"
  command "php go-pear.phar"
end
