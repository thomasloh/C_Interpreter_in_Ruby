module CCompiler

  # Returns bytecode for subroutine definition
  class Subroutine < SyntaxNode
    def compile
      
      function_id = self.offset
            
      bytecode = []
      
      bytecode.concat([PUSH_FUNCTION, function_id ])
      
      bytecode.concat(self.elements[1].compile)
            
      bytecode.concat(self.elements[2].compile)
            
      bytecode.concat([RETURN, END_FUNCTION, PUSH_NIL])
      
      bytecode.concat([END_FUNCTION, function_id])
      
      bytecode.concat(self.elements[0].compile)
      
      return bytecode
      
    end
  end
  
end