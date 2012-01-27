module CCompiler

  # Returns bytecode for character literal
  class CharLiteral < SyntaxNode
    def compile      
      [ PUSH_CHAR, self.text_value.delete("'") ]
    end
  end
  
end