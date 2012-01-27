require 'rubygems'
require 'polyglot'
require 'treetop'

# Parser is the class that responsible for parsing the source code
class Parser

  # Finds path of current directory
  base_path = File.expand_path(File.dirname(__FILE__))
  
  # Load necessary ruby files
  require File.join(base_path, 'cparser_extensions.rb')
    
  #  Load grammar file
  Treetop.load(File.join(base_path, 'cparser.treetop'))

  # Declare new Parser object
  @@parser = CParserParser.new # => #<CParserParser:0x1005e66a8 @consume_all_input=true>
    
  # Parses source code
  def self.parse(data)
    
    tree = @@parser.parse(data)
        
    # If tree is empty 
    if(tree.nil?) 
      puts @@parser.failure_reason
    end
      
    # Cleans up tree
    self.clean_tree(tree)
      
    return tree
  end

  # Clean up tree by removing unnecessary nodes
  def self.clean_tree(root_node)
     return if(root_node.elements.nil?)
     root_node.elements.delete_if{|node| node.class.name == "Treetop::Runtime::SyntaxNode" }
     root_node.elements.each {|node| self.clean_tree(node) }
  end
                
end
