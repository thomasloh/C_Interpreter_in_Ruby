module CCompiler
  
  # Returns bytecode for character declaration in subroutine 
  class CharAssignmentSub < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end