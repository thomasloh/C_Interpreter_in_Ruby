module CCompiler 
  
  # SyntaxNode is a class that can be used to represent each syntax node in the tree
  class SyntaxNode
    
    attr_accessor :parent, :elements, :offset, :text_value
    
    # Initialize attribuets for each syntax node
    def initialize(text_value, offset, elements = nil)
      @parent = nil
      @elements = elements
      @offset = offset
      @text_value = text_value
      unless( elements.nil? )
        elements.each do |element|
          element.parent = self
        end
      end
    end
  end
  
end


