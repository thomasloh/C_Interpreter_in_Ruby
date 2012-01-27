module CCompiler

  # Returns bytecode for procedure calls
  class ProcedureCall < SyntaxNode
    def compile
      function_id = self.offset
      
      # puts self.elements
      bytecode = []
      
      proc_name = self.elements[0].compile[1].to_s
      
      unless (proc_name == "puts")
                
        bytecode.concat(self.elements[1].compile)
      
        bytecode.concat(self.elements[0].compile)
      
        bytecode.concat([CALL])
      else
        
        bytecode.concat(self.elements[1].compile)
        
        bytecode.concat([PUTS])
      end
      
      return bytecode
      
    end
  end
  
end