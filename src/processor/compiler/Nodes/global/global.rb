module CCompiler
  
  # Return empty bytecode
  class Global < SyntaxNode
    def compile

      unless self.elements.nil?
        
        bytecode = []
        
        self.elements.each do |element|
          bytecode.concat( element.compile )
        end
        
      else
        bytecode = [] 
      end
      
      return bytecode    
      
    end
  end
end