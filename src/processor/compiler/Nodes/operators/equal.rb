module CCompiler

  # Returns bytecode for equal operator
  class EqualOp < SyntaxNode
    def compile
      [ EQUAL ]
    end
  end
  
end