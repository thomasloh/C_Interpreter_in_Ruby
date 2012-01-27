module CCompiler

  # Compiler is a clas that responsible for compiling the abstract syntax tree (hash) and produce a bytecode
  class Compiler
  
    # Compiles each syntax node
    def self.compile(ast)
      bytecode = self.load_AST(ast).compile
      return bytecode
    end
  
    # Loads the abstract syntax tree and declare new objects for each syntax node class
    def self.load_AST(hash)
      unless(hash[:elements].nil?)
        elements = hash[:elements].map {|x| self.load_AST(x) }
      else
        elements = nil
      end
      tree = Kernel.const_get("CCompiler").const_get(hash[:name]).new(hash[:text_value], hash[:offset], elements)
      return tree
    end
  
  end
  
end
