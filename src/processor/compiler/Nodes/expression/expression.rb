module CCompiler
  
  # Returns bytecode for expressions  
  class Expression < SyntaxNode
    def compile

      return self.elements.first.compile
    end
  end
  
end