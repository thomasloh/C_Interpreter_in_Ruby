module CCompiler
  
  # Returns bytecode for integer declaration in subroutine
  class IntAssignmentSub < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end