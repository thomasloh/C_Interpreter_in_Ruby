module CCompiler

  # Returns bytecode for additive expressions
  class AdditiveExpression < SyntaxNode
    def compile
      bytecode = []
      bytecode.concat(self.elements[0].compile)
      bytecode.concat(self.elements[2].compile)
      bytecode.concat(self.elements[1].compile)
      return bytecode
    end
  end
  
end