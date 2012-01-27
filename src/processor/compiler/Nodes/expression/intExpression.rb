module CCompiler
  
  # Returns bytecode for integer expressions
  class IntExpression < SyntaxNode
    def compile      
      return self.elements.first.compile
    end
  end
  
end