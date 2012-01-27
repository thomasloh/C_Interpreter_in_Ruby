module CCompiler

  # Returns bytecode for multiplication operator
  class MultiplicationOp < SyntaxNode
    def compile
      [ MULTIPLY ]
    end
  end
  
end