#!/usr/bin/env ruby
require 'fileutils'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require_relative 'cda_gen'
Gen.generate

require_relative 'ccd_gen'
CcdGen.generate
