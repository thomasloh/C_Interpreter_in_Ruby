module CCompiler
  
  # Returns bytecode for character expressions
  class CharExpression < SyntaxNode
    def compile      
      return self.elements.first.compile
    end
  end
  
end