module CCompiler
  
  # Returns bytecode for string expressions
  class StringExpression < SyntaxNode
    def compile      
      return self.elements.first.compile
    end
  end
  
end