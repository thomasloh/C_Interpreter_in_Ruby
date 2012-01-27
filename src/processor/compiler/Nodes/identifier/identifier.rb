module CCompiler

  # Returns bytecode for (set / get) (local / global) identifer
  class Identifier < SyntaxNode
    def compile    
      identifier = self.text_value.delete("+").delete(" ")
      parent = self.parent
      if(identifier[0].chr == "$") # Global Variables
        if(parent.is_a?(Expression) || parent.is_a?(MultitiveExpression) || parent.is_a?(AdditiveExpression) || parent.is_a?(ComparativeExpression) || 
           parent.is_a?(IntExpression) || parent.is_a?(IntMultitiveExpression) || parent.is_a?(IntAdditiveExpression) || parent.is_a?(IntComparativeExpression) || 
           parent.is_a?(FloatExpression) || parent.is_a?(FloatMultitiveExpression) || parent.is_a?(FloatAdditiveExpression) || parent.is_a?(FloatComparativeExpression) || 
           parent.is_a?(StringExpression) || parent.is_a?(StringMultitiveExpression) || parent.is_a?(StringAdditiveExpression) || parent.is_a?(StringComparativeExpression) || 
           parent.is_a?(CharExpression) || parent.is_a?(CharMultitiveExpression) || parent.is_a?(CharAdditiveExpression) || parent.is_a?(CharComparativeExpression) || 
           parent.is_a?(BoolExpression) || parent.is_a?(CombinationOutput) || parent.is_a?(ProcedureCall) || parent.is_a?(Output))
          [ GET_GLOBAL, identifier.to_sym ]          
        elsif(parent.is_a?(IntAssignment) || parent.is_a?(StringAssignment) || parent.is_a?(BoolAssignment) || parent.is_a?(AssignmentB) ||
              parent.is_a?(FloatAssignment) || parent.is_a?(CharAssignment) || self.is_a?(Subroutine) || parent.is_a?(Subroutine) ||
              parent.is_a?(IntAssignmentSub) || parent.is_a?(StringAssignmentSub) || parent.is_a?(BoolAssignmentSub) || 
              parent.is_a?(FloatAssignmentSub) || parent.is_a?(CharAssignmentSub) || parent.is_a?(Input))
          [ SET_GLOBAL, identifier.to_sym ]
        else
          raise CompileError, "Unknown parent for Identfier: #{self.parent.class}"        
        end
      else # Local Variables
        if(parent.is_a?(Expression) || parent.is_a?(MultitiveExpression) || parent.is_a?(AdditiveExpression) || parent.is_a?(ComparativeExpression) || 
           parent.is_a?(IntExpression) || parent.is_a?(IntMultitiveExpression) || parent.is_a?(IntAdditiveExpression) || parent.is_a?(IntComparativeExpression) || 
           parent.is_a?(FloatExpression) || parent.is_a?(FloatMultitiveExpression) || parent.is_a?(FloatAdditiveExpression) || parent.is_a?(FloatComparativeExpression) || 
           parent.is_a?(StringExpression) || parent.is_a?(StringMultitiveExpression) || parent.is_a?(StringAdditiveExpression) || parent.is_a?(StringComparativeExpression) || 
           parent.is_a?(CharExpression) || parent.is_a?(CharMultitiveExpression) || parent.is_a?(CharAdditiveExpression) || parent.is_a?(CharComparativeExpression) || 
           parent.is_a?(BoolExpression) || parent.is_a?(CombinationOutput) || parent.is_a?(ProcedureCall) || parent.is_a?(Output))
           [ GET_LOCAL, identifier.to_sym ]
         elsif(parent.is_a?(IntAssignment) || parent.is_a?(StringAssignment) || parent.is_a?(BoolAssignment) || parent.is_a?(AssignmentB) ||
                 parent.is_a?(FloatAssignment) || parent.is_a?(CharAssignment) || self.is_a?(Subroutine) || parent.is_a?(Subroutine) ||
                 parent.is_a?(IntAssignmentSub) || parent.is_a?(StringAssignmentSub) || parent.is_a?(BoolAssignmentSub) || 
                 parent.is_a?(FloatAssignmentSub) || parent.is_a?(CharAssignmentSub) || parent.is_a?(Input)) 
           [ SET_LOCAL, identifier.to_sym ]
        else
          raise CompileError, "Unknown parent for Identfier: #{self.parent.class}"
        end
      end
    end
  end
end