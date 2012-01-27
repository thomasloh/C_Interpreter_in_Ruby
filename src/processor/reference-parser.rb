# References all the .rb files in the parser folder
require 'rubygems' # => true

require_files = []
require_files.concat Dir[File.join(File.dirname(__FILE__), 'parser', '**', '*.rb')] # => ["./parser/cparser_extensions.rb", "./parser/parser.rb"]

require_files.each do |file|
  require File.expand_path(file)
end


