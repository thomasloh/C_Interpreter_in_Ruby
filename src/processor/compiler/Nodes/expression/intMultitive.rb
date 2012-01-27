module CCompiler

  # Returns bytecode for integer multitive expressions
  class IntMultitiveExpression < SyntaxNode
    def compile
      bytecode = []
      bytecode.concat(self.elements[0].compile)
      bytecode.concat(self.elements[2].compile)
      bytecode.concat(self.elements[1].compile)
      return bytecode
    end
  end
  
end