module CCompiler
  
  # Returns bytecode Assignment B
  class AssignmentB < SyntaxNode
        
    def compile

      bytecode = []
      
      bytecode.concat( self.elements[2].compile )
      bytecode.concat( self.elements[0].compile )
      

      return bytecode
    end
  end
  
end