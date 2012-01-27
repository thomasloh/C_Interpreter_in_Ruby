module CCompiler

  # Returns bytecode for output operations
  class Output < SyntaxNode
    def compile
      
      # puts self.elements
      
      bytecode = []
      
      # if self.elements[0].class.name == "CCompiler::StringLiteral"
      #   bytecode.concat([PUSH_STRING])
      # else
      #   bytecode.concat()
      # end
      # puts "hi"
            
      bytecode.concat(self.elements[0].compile)
      
      unless(self.elements[1].nil?)
        bytecode.concat(self.elements[1].compile)
      end
      
      return bytecode
      
    end
  end
  
end