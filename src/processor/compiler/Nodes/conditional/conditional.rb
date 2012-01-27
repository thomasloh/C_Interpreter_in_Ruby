module CCompiler

  # # Returns bytecode for conditionals
  class Conditional < SyntaxNode
    def compile
      
      bytecode = []
      
      bytecode.concat(self.elements[0].compile)
      
      # here have EXPRESSION, JUMP AND IF_BLOCK
      
      # if there is an ELSE
      unless(self.elements[1].nil?)
        else_block = self.elements[1].compile;
        bytecode.concat([JUMP, else_block.length +  2])
        bytecode.concat(else_block)
      end
      
      return bytecode
    end
  end
  
end