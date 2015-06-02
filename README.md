Redmine Lightbox 2
==================

This plugin lets you preview image, pdf, swf and msg attachments in a lightbox.

This is a fork of zipme's [redmine_lightbox](https://github.com/zipme/redmine_lightbox) plugin.

*This plugin is listed in the [Redmine plugin directory](http://www.redmine.org/plugins/redmine_lightbox2)*


Compatibility
-------------

The latest version only supports redmine 3.0

A Redmine 2.6.x compatible version can be found in the [redmine-2.6](https://github.com/paginagmbh/redmine_lightbox2/tree/redmine-2.6) branch.

A Redmine 2.0 - 2.5.x compatible version can be found in the [redmine-2.5-and-lower](https://github.com/paginagmbh/redmine_lightbox2/tree/redmine-2.5-and-lower) branch.

For older version please download [this package](https://github.com/paginagmbh/redmine_lightbox2/zipball/7cd1d66d54f267015dcd0b0d0eadab251918de1d)


Installation and Setup
----------------------

* Clone or [download](https://github.com/paginagmbh/redmine_lightbox2/releases) this repo into your **redmine_root/plugins/** folder
```
$ git clone https://github.com/paginagmbh/redmine_lightbox2.git
```
* If you downloaded a tarball / zip from master branch, make sure you rename the extracted folder to `redmine_lightbox2`
* You have to run the plugin rake task to provide the assets (from the Redmine root directory):
```
$ rake redmine:plugins:migrate RAILS_ENV=production
```
* Restart redmine


License
-------

*redmine_lightbox2* plugin is developed under the [MIT License](LICENCE).


Screenshots
-----------

![Screenshot 1](http://img.skitch.com/20110303-gj7p1qyb984s1yjn1takdfsid7.medium.jpg)

![Screenshot 2](http://img.skitch.com/20110303-pufurh8rw42kin8h2jgjxu1nee.medium.jpg)

![Screenshot 3](http://img.skitch.com/20110303-q2bqemgwccnfqdtt7shimguwm7.medium.jpg) 

![Screenshot 4](http://img.skitch.com/20110401-c5fx2ccgb1bg64ydhfemurqqch.medium.jpg) 
