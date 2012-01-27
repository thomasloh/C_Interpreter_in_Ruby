# References all the .rb files in the compiler folder
require 'rubygems' # => true

require File.expand_path(File.join(File.dirname(__FILE__), 'compiler/syntaxNode.rb')) # => true

require_files = []

require_files.concat Dir[File.join(File.dirname(__FILE__), 'compiler', '**', '*.rb')] # => ["./compiler/compiler.rb", "./compiler/Nodes/assignment/assignment.rb", "./compiler/Nodes/block/block.rb", "./compiler/Nodes/body/body.rb", "./compiler/Nodes/conditional/conditional.rb", "./compiler/Nodes/expression/additive.rb", "./compiler/Nodes/expression/comparative.rb", "./compiler/Nodes/expression/expression.rb", "./compiler/Nodes/expression/multitive.rb", "./compiler/Nodes/global/global.rb", "./compiler/Nodes/identifier/identifier.rb", "./compiler/Nodes/literal/false.rb", "./compiler/Nodes/literal/float.rb", "./compiler/Nodes/literal/integer.rb", "./compiler/Nodes/literal/string.rb", "./compiler/Nodes/literal/true.rb", "./compiler/Nodes/operators/addition.rb", "./compiler/Nodes/operators/division.rb", "./compiler/Nodes/operators/equal.rb", "./compiler/Nodes/operators/greaterThan.rb", "./compiler/Nodes/operators/greaterThanEqual.rb", "./compiler/Nodes/operators/lessThan.rb", "./compiler/Nodes/operators/lessThanEqual.rb", "./compiler/Nodes/operators/multiplication.rb", "./compiler/Nodes/operators/notEqual.rb", "./compiler/Nodes/operators/subtraction.rb", "./compiler/Nodes/statement/statement.rb", "./compiler/Nodes/subroutine/function.rb", "./compiler/syntaxNode.rb", "./compiler/vmcode.rb"]

require_files.each do |file|
  require File.expand_path(file)
end
