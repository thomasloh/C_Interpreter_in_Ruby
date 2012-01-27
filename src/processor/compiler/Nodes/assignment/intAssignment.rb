module CCompiler
  
  # Returns bytecode for integer assignment
  class IntAssignment < SyntaxNode
        
    def compile
      
      bytecode = []
      bytecode.concat( self.elements[3].compile )
      bytecode.concat( self.elements[1].compile )
      
      return bytecode
    end
  end
  
end