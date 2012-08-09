chef-php_pear
=============
version 1.0.0 - [changelog](https://github.com/xforty/chef-php_pear/blob/master/CHANGELOG.md)

### Description

A cookbook for installing or upgrading PEAR to the current version
using the [phar method](http://pear.php.net/manual/en/installation.getting.php).
This supports distros that either don't have a pre-built package or even a
modern version available via their package manager.  For example, pear 1.4.9
is the newest version available via yum on CentOS 5.7

### Requirements

See [metadata.rb](https://github.com/xforty/chef-php_pear/blob/master/metadata.rb)

### Attributes

#### default

See [attributes/default.rb](https://github.com/xforty/chef-php_pear/blob/master/attributes/default.rb)
for default values.

* `default['php']['pear']['download']['folder']`   - Destination folder for downloaded file (no trailing slash)
* `default['php']['pear']['download']['url']`      - URL from which to download (no trailing slash)
* `default['php']['pear']['download']['filename']` - Name of the install file (probably a phar)

### Usage

Include this recipe in your own cookbook recipe.
