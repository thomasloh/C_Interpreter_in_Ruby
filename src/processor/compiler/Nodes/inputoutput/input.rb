module CCompiler

  # Returns bytecode for input operations
  class Input < SyntaxNode
    def compile
            
      bytecode = []
            
      bytecode.concat([GETS])
      
      bytecode.concat(self.elements[0].compile)
      
      return bytecode
      
    end
  end
  
end