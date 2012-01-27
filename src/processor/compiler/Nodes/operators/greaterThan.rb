module CCompiler

  # Returns bytecode for greater than operator
  class GreaterOp < SyntaxNode
    def compile
      [ GREATER_THAN ]
    end
  end
  
end