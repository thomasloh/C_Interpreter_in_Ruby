module CCompiler

  # Returns bytecode for not equal operator
  class NotEqualOp < SyntaxNode
    def compile
      [ EQUAL, INVERT ]
    end
  end
  
end