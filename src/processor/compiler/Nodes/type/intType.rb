module CCompiler

  # Returns bytecode for integer type
  class IntType < SyntaxNode
    def compile
      # puts "hi"
      [ PUSH_INT ]
    end
  end
  
end