module CCompiler
  
  # Returns bytecode for boolean expressions
  class BoolExpression < SyntaxNode
    def compile      
      return self.elements.first.compile
    end
  end

end