require 'lib/metadata'
require 'rake'

version = Metadata::VERSION
date = Time.now.strftime("%Y-%m-%d")

Gem::Specification.new do |s|
  s.name = 'metadata'
  s.version = version
  s.date = date
  s.summary = 'Metadata extractor'
  s.email = 'ilmari.heikkinen@gmail.com'
  s.authors = ['Ilmari Heikkinen']
  s.files = FileList[
    'lib/metadata',
    'lib/metadata/extract',
    'lib/metadata/mime_info',
    'lib/metadata/mime_info_magic',
    'lib/metadata/bt'
  ].to_a
  s.executables << 'mdh'
  s.executables << 'chardet'
  s.required_ruby_version = '>= 1.8.1'
  %w(flacinfo-rb wmainfo-rb MP4Info id3lib-ruby apetag).each{|dep|
    s.add_dependency(dep)
  }
end
