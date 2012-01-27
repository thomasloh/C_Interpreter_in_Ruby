module CCompiler
  
  # Returns bytecode for string declaration in subroutines
  class StringAssignmentSub < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end