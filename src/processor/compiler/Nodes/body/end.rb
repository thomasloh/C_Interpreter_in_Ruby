module CCompiler

  # Returns empty bytecode
  class End < SyntaxNode
    def compile
      bytecode = []
      return bytecode
    end
  end
  
end
