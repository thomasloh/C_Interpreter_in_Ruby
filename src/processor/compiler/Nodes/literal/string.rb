module CCompiler

  # Returns bytecode for string literal
  class StringLiteral < SyntaxNode
    def compile
      self.text_value = self.text_value.strip.delete("+")
      
      [ PUSH_STRING, self.text_value.slice(1, self.text_value.length - 2) ]
    end
  end
  
end