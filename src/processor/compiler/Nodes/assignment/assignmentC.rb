module CCompiler
  
  # Returns bytecode Assignment C
  class AssignmentC < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[0].compile )
      
      return bytecode
    end
  end
  
end