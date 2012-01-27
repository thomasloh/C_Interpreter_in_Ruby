module CCompiler

  # Returns bytecode Assignment A
  class AssignmentA < SyntaxNode
        
    def compile

      return self.elements.first.compile
            
    end
  end
  
end