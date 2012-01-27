module CCompiler

  # Returns bytecode for while loop
  class Loop < SyntaxNode
    def compile
      
      bytecode = []
      
      while_expr = self.elements[0].compile

      while_block = self.elements[1].compile
      
      bytecode.concat(while_expr)
      
      bytecode.concat([JUMP_UNLESS, while_block.length + 4])
      
      bytecode.concat(while_block)
      
      initial = while_expr.length + 2 + while_block.length
      
      initial = initial * -1
            
      bytecode.concat([JUMP, initial])
      
      return bytecode
    end
  end
  
end