require 'rubygems' # => true
require 'treetop' # => true
require 'pp' # => true
require 'reference-compiler'  # => true
require 'reference-parser' # => true
require 'reference-vm' # => true

include CParser # => Object
include CCompiler # => Object
include CVM # => Object

# Function
###################################################################

# Converts the source code in the file into a string for parsing
def fileToString(file)
  
  data = ''
  f = File.open(file, "r")
  f.each_line do |line|
    data += line
  end
  return data
end

# Get the source code (in string form) from a specified file
def getText(file)
  
  base = File.expand_path(File.dirname(__FILE__))

  dest = File.join(base, file)

  return fileToString(dest) 
end

# Get source file
#################

# puts "Please provide a filename:"

# Gets file name
filename = gets.chomp
# filename = "source.c"

# Finds file and Converts file to string
text = getText(filename)

# Parses and outputs parse result
###############################

# Parses the tree
tree = Parser.parse(text)

# Converts the tree to hash
tree = tree.to_hash

# For pretty printing the abstract syntax tree
# pp(tree)

# Compiles and outputs the bytecode
###################################

# Compile the abstract syntax tree
bytecode = Compiler.compile(tree)
 
# For inspecting the content of the bytecode
# puts bytecode.inspect


# Run the program
###################################

vm = VM.new

vm.run(bytecode)






