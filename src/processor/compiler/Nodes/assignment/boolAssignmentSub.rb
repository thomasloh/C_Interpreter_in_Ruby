module CCompiler
  
  # Returns bytecode boolean declaration in subroutines
  class BoolAssignmentSub < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end