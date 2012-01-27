module CCompiler
  
  # Returns bytecode for float expressions
  class FloatExpression < SyntaxNode
    def compile      
      return self.elements.first.compile
    end
  end
  
end