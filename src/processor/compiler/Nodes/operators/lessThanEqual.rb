module CCompiler

  # Returns bytecode for less than or equal operator
  class LessEqOp < SyntaxNode
    def compile
      [ LESS_THAN_EQUAL ]
    end
  end
  
end