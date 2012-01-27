module CCompiler
  
  # Returns bytecode for float declaration in subroutine
  class FloatAssignmentSub < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end