# For example print to stdout patient name from
# CCD samlple xml `path/to/ruby-cda/spec/fixtures/ccd.xml`.

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../')
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../lib')

require 'virtus'
require 'lib/virtus_annotations'
require 'lib/cda'
require 'lib/ccd'
require 'nokogiri'

file_name = File.join(File.dirname(__FILE__), '..', 'spec', 'fixtures', 'ccd.xml')
xml = Nokogiri::XML.parse(File.read(file_name))
xml.remove_namespaces!
puts Cda::XmlParser
  .new(xml.xpath('ClinicalDocument'), Ccd::Registry.instance)
  .parse.record_target.first.patient_role.patient.name.first.given.first
