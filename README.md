[![Build Status](https://travis-ci.org/alop/cookbook-pacct-log.png?branch=master)](https://travis-ci.org/alop/cookbook-pacct-log)
Description
===========

Sets up pacct forwarding to loghosts

Requirements
============

rsync

Attributes
==========

Usage
=====

Add pacct::server to rsyslog host/role
Add pacct::client to all nodes that require pacct logging

default
----

Sets up pacct forwarding to loghosts

Testing
=====

This cookbook is using [ChefSpec](https://github.com/acrmp/chefspec) for testing.

    $ cd $repo
    $ bundle
    $ librarian-chef install
    $ ln -s ../ cookbooks/tacacs
    $ rspec cookbooks/tacacs


License and Author
==================

Author:: Abel Lopez (<alop@att.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

