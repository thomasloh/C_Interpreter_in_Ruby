module CCompiler

  # Returns bytecode for division operator
  class DivisionOp < SyntaxNode
    def compile
      [ DIVIDE ]
    end
  end
  
end