module CCompiler

  # # Returns bytecode for else clause
  class Else < SyntaxNode
    def compile
      
      bytecode = []
      
      bytecode = self.elements[0].compile
      
      return bytecode
    end
  end
  
end