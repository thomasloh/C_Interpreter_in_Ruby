module CCompiler

  # # Returns bytecode for if clause
  class If < SyntaxNode
    def compile
      
      bytecode = []
      
      bytecode = self.elements[0].compile
      
      if_block = self.elements[1].compile

      bytecode.concat([JUMP_UNLESS, if_block.length + 4])
      
      bytecode.concat(if_block)
      
      return bytecode
    end
  end
  
end