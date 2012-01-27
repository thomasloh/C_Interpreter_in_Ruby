module CCompiler

  # Returns bytecode for false literal
  class FalseLiteral < SyntaxNode
    def compile
      [ PUSH_BOOL, false ]
    end
  end
  
end