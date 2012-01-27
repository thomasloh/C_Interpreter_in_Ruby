module CCompiler

  # # Returns bytecode for every statement in body
  class Middle < SyntaxNode
    def compile
      
      bytecode = []
      
      self.elements.each do |element|
        bytecode.concat( element.compile )
      end
      
      return bytecode
    end
  end
  
end
