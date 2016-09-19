Ruby CDA
========

[![Build Status](https://travis-ci.org/hospital-systems/ruby-cda.png?branch=master)](https://travis-ci.org/hospital-systems/ruby-cda)

Lib for parse & generation of HL7 cda documents

### Build and install ruby-cda with example file

* ``bash> cd releases/contributing/ruby-cda``
* ``bash> gem build ./ruby-cda.gemspec``
* ``bash> gem install ./ruby-cda-0.0.1.gem``
* ``bash> cd ./examples``
* ``bash> ruby parse_ccd.rb``

### Fixed

1. fixed file ``lib/cda.rb``
2. fixed file ``ruby-cda.gemspec``

FAQ
---

### How to parse CCD?

See example in `path/to/ruby-cda/examples/parse_ccd.rb`

### Error: Expected only one node as result of templateId/@root

Error occurs due to multiple templateIds are present in your ccd.
Unfortunately ruby-cda gem does not support multiple templateIds.
Internally ruby-cda chooses class of node based on OID from templateId.
You can find this mapping here:
https://github.com/hospital-systems/ruby-cda/blob/master/lib/ccd/_registry.rb
Choosen class determines node behaviour and available accessor methods.
Actually to support multiple template ids we should be able to 'assign'
multiple classes to one object.
It's only achievable using ruby modules (mixins), not classes.

### 14 Sep 2016 Oleg G.Kapranov
