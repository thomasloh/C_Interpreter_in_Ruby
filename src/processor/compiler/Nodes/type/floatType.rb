module CCompiler

  # Returns bytecode for float type
  class FloatType < SyntaxNode
    def compile
      [ PUSH_FLOAT ]
    end
  end
  
end