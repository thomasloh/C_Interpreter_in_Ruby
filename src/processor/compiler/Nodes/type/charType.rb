module CCompiler

  # Returns bytecode for character type
  class CharType < SyntaxNode
    def compile
      [ PUSH_CHAR ]
    end
  end
  
end