module CCompiler

  # Returns bytecode for true literal
  class TrueLiteral < SyntaxNode
    def compile
      [ PUSH_BOOL, true ]
    end
  end
  
end