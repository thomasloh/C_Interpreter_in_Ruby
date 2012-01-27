module CCompiler

  # Returns bytecode for subtraction operator
  class SubtractionOp < SyntaxNode
    def compile
      [ SUBTRACT ]
    end
  end
  
end