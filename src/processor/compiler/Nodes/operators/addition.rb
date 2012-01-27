module CCompiler

  # Returns bytecode for addition operator
  class AdditionOp < SyntaxNode
    def compile
      [ ADD ]
    end
  end
  
end