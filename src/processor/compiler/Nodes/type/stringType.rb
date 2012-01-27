module CCompiler

  # Returns bytecode for string type
  class StringType < SyntaxNode
    def compile
      [ PUSH_STRING ]
    end
  end
  
end