module CCompiler
  
  # Returns empty bytecode
  class Begin < SyntaxNode
    def compile
      bytecode = []
      return bytecode
    end
  end
  
end
