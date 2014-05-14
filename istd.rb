require 'nokogiri'
require 'zip'

# meta.xml
meta_xml = Nokogiri::XML::Builder.new do |xml|
  xml.map_ {
    xml.pair('key' => 'bundleName') {
      xml.string 'com.kachalobalashoff.iStudiez'
    }
    xml.pair('key' => 'bundleVersion') {
      xml.string '856'
    }
    xml.pair('key' => 'backupCreationTimestamp') {
      xml.value(1400041718.1234, 'mode' => 'float64')
    }
    xml.pair('key' => 'deviceName') {
      xml.string "SQLite and Ruby"
    }
    xml.pair('key' => 'objectsCount') {
      xml.map_
    }
    xml.pair('key' => 'modelRevision') {
      xml.value(1, 'mode' => 'int32')
    }
    xml.pair('key' => 'bundleShortVersion') {
      xml.string '1.2.2'
    }
    xml.pair('key' => 'modelVersion') {
      xml.value(2, 'mode' => 'int32')
    }
  }
end
format = 1; no_declaration = 2; as_xml = 32; save_opts = format|no_declaration|as_xml;
xmlstr = meta_xml.to_xml(indent: 0, save_with: save_opts).gsub("\n", '')
::File.open('metarb.xml', 'w+') {|f| f << xmlstr}

zipfile = './ruby.istd'

Zip::File.open(zipfile, Zip::File::CREATE) do |zf|
  zf.add('meta.xml', './metarb.xml')
  zf.add('main.db', './tmp/check.db')
end
