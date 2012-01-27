module CCompiler

  # Returns bytecode for greater than or equal operator
  class GreaterEqOp < SyntaxNode
    def compile
      [ GREATER_THAN_EQUAL ]
    end
  end
  
end