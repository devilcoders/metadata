was_disabled = GC.disable
require '#{File.dirname(__FILE__)}/lib/metadata/extract.rb'

module Metadata
  VERSION = '2.0'
end
GC.enable unless was_disabled
