require 'spec_helper'

describe Cda::XmlParser do
  let(:xml_content) do
    filename = File.join(File.dirname(__FILE__), '..', 'fixtures', "ccd.xml")
    File.read(filename)
  end

  let(:xml_node) do
    document = Nokogiri::XML.parse(xml_content)
    document.remove_namespaces!
    document.xpath('ClinicalDocument')
  end

  subject do
    described_class.new(xml_node, Ccd::Registry.instance)
  end

  it 'should parse document' do
    ccd = subject.parse
    patient = ccd.record_target.first.patient_role

    patient.patient.name.select { |name| name.use == 'L' }.first
      .given.map(&:_text).should == ['Jane', 'Janie']

    patient.addr.select { |addr| addr.use == 'HP' }.first
      .country.first._text.should == 'US'

    patient.telecom.select { |addr| addr.use == 'HP' }.first
      .value.should == 'tel:(816)276-6909'
  end
end
