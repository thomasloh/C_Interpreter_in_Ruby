module CCompiler

  # # Returns bytecode for outputs
  class CombinationOutput < SyntaxNode
    def compile
      
      # puts self.elements.length
      
      bytecode = []
      
      self.elements.each do |element|
        
        # puts element.compile
        
        a = element.compile
        
        # puts a.to_s
        
        bytecode.concat(element.compile)
        
        if element.class.name == "CCompiler::Identifier"
          bytecode.concat([TO_STRING])
        end
        
      end
      
      i = 0
      
      while i < self.elements.length
        bytecode.concat([ADD])
        i += 1
      end
      
      bytecode.concat([PUTS])

      return bytecode

    end
  end
  
end