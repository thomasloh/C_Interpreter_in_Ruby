module CCompiler

  # Returns bytecode for statements
  class Statement < SyntaxNode
    def compile
            
      return self.elements.first.compile
    end
  end
  
end