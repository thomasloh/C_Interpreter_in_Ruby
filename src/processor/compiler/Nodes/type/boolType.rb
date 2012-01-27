module CCompiler

  # Returns bytecode for boolean type
  class BoolType < SyntaxNode
    def compile
      [ PUSH_BOOL ]
    end
  end
  
end