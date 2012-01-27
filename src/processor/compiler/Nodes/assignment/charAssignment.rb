module CCompiler
  
  # Returns bytecode character assignment
  class CharAssignment < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[3].compile )
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end