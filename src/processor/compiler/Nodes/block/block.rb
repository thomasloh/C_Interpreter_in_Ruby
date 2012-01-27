module CCompiler

  # # Returns bytecode for blocks
  class Block < SyntaxNode
    def compile
      
      bytecode = []
      
      unless self.elements[1].nil?
        bytecode.concat( self.elements[0].compile )
        bytecode.concat( self.elements[1].compile )
      else
        bytecode.concat( self.elements[0].compile )
      end

      return bytecode
    end
  end
  
end