module CCompiler

  # Returns bytecode for nil literal
  class NilLiteral < SyntaxNode
    def compile
      [ PUSH_NIL ]
    end
  end
  
end