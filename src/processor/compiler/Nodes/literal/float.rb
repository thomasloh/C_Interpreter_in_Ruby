module CCompiler

  # Returns bytecode for float literal
  class FloatLiteral < SyntaxNode
    def compile
      [ PUSH_FLOAT, self.text_value.to_f ]
    end
  end
  
end