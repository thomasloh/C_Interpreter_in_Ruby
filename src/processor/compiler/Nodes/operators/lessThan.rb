module CCompiler

  # Returns bytecode for less than operator
  class LessOp < SyntaxNode
    def compile
      [ LESS_THAN ]
    end
  end
  
end