module CParser

    class Treetop::Runtime::SyntaxNode

    # Converts AST to hash
    def to_hash()
    hash = {}
    hash[:name] = self.class.name.split("::").last
    hash[:text_value] = self.text_value
    hash[:offset] = self.interval.first
    unless( self.elements.nil? )
    hash[:elements] = self.elements.map {|element| element.to_hash() }
    else
    hash[:elements] = nil
    end
    return hash
    end
    end

    # Literals
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    # Integer Literal syntax node class
    class IntegerLiteral < Treetop::Runtime::SyntaxNode
    end

    # String Literal syntax node class
    class StringLiteral < Treetop::Runtime::SyntaxNode
    end

    # Float Literal syntax node class
    class FloatLiteral < Treetop::Runtime::SyntaxNode
    end

    # Nil Literal syntax node class
    class NilLiteral < Treetop::Runtime::SyntaxNode
    end
    
    # True Literal syntax node class
    class TrueLiteral < Treetop::Runtime::SyntaxNode
    end

    # False Literal syntax node class
    class FalseLiteral < Treetop::Runtime::SyntaxNode
    end

    # Character Literal syntax node class
    class CharLiteral < Treetop::Runtime::SyntaxNode
    end
    
    # Identifier 
    #------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    # Identifier syntax node class
    class Identifier < Treetop::Runtime::SyntaxNode
    end
    
    # Expressions
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Expression syntax node class
    class Expression < Treetop::Runtime::SyntaxNode
    end
    
    # Integer expression syntax node class
    class IntExpression < Treetop::Runtime::SyntaxNode
    end

    # Float expression syntax node class
    class FloatExpression < Treetop::Runtime::SyntaxNode
    end
    
    # String expression syntax node class
    class StringExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Character expression syntax node class
    class CharExpression < Treetop::Runtime::SyntaxNode
    end

    # Boolean expression syntax node class
    class BoolExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Term syntax node class
    class Term < Treetop::Runtime::SyntaxNode
    end
    
    # Comparative Expression
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Comparative expression syntax node class
    class ComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Integer comparative expression syntax node class
    class IntComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Float comparative expression syntax node class
    class FloatComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    # String comparative expression syntax node class
    class StringComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Character comparative expression syntax node class
    class CharComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Additive Expression
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Additive expression syntax node class
    class AdditiveExpression < Treetop::Runtime::SyntaxNode
    end
  	
  	# Integer additive expression syntax node class
    class IntAdditiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Float additive expression syntax node class
    class FloatAdditiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # String additive expression syntax node class
    class StringAdditiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Character additive expression syntax node class
    class CharAdditiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Multitive Expression
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Multitive expression syntax node class
    class MultitiveExpression < Treetop::Runtime::SyntaxNode
    end
  	
  	# Integer multitive expression syntax node class
    class IntMultitiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Float multitive expression syntax node class
    class FloatMultitiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # String multitive expression syntax node class
    class StringMultitiveExpression < Treetop::Runtime::SyntaxNode
    end

    # Characater multitive expression syntax node class
    class CharMultitiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    # Assignments
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	
	  # Assignment A syntax node class
    class AssignmentA < Treetop::Runtime::SyntaxNode
    end

    # Assignement B syntax node class
    class AssignmentB < Treetop::Runtime::SyntaxNode
    end
  	
  	# Assignment C syntax node class
    class AssignmentC < Treetop::Runtime::SyntaxNode
    end
  	
  	# Integer Assignment syntax node class
    class IntAssignment < Treetop::Runtime::SyntaxNode
    end

    # String Assignment syntax node class
    class StringAssignment < Treetop::Runtime::SyntaxNode
    end

    # Float Assignment syntax node class
    class FloatAssignment < Treetop::Runtime::SyntaxNode
    end

    # Character Assignment syntax node class
    class CharAssignment < Treetop::Runtime::SyntaxNode
    end

    # Boolean Assignment syntax node class
    class BoolAssignment < Treetop::Runtime::SyntaxNode
    end
  	
    # Variable declartions in Subroutine parameter
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Integer assignment in subroutine syntax node class
    class IntAssignmentSub < Treetop::Runtime::SyntaxNode
    end

    # String assignment in subroutine syntax node class
    class StringAssignmentSub < Treetop::Runtime::SyntaxNode
    end

    # Float assigment in subroutine syntax node class
    class FloatAssignmentSub < Treetop::Runtime::SyntaxNode
    end

    # Character assignment in subroutine syntax node class
    class CharAssignmentSub < Treetop::Runtime::SyntaxNode
    end

    # Boolean assignment in subroutine syntax node class
    class BoolAssignmentSub < Treetop::Runtime::SyntaxNode
    end
    
    # Types
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
    # Float type syntax node class
    class FloatType < Treetop::Runtime::SyntaxNode
    end

    # Integer type syntax node class
    class IntType < Treetop::Runtime::SyntaxNode
    end

    # String type syntax node class
    class StringType < Treetop::Runtime::SyntaxNode
    end

    # Character type syntax node class
    class CharType < Treetop::Runtime::SyntaxNode
    end

    # Boolean type syntax node class
    class BoolType < Treetop::Runtime::SyntaxNode
    end

    # Operators
    #------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    # Assignment Operator syntax node class
    class AssignmentOp < Treetop::Runtime::SyntaxNode
    end

    # Equal operator syntax node class
    class EqualOp < Treetop::Runtime::SyntaxNode
    end

    # Not equal operator syntax node class
    class NotEqualOp < Treetop::Runtime::SyntaxNode
    end

    # Greater than operator syntax node class 
    class GreaterOp < Treetop::Runtime::SyntaxNode
    end

    # Less then operator syntax node class
    class LessOp < Treetop::Runtime::SyntaxNode
    end

    # Greater than or equal operator syntax node class
    class GreaterEqOp < Treetop::Runtime::SyntaxNode
    end

    # Less than or equal operator syntax node class
    class LessEqOp < Treetop::Runtime::SyntaxNode
    end

    # Addition operator syntax node class
    class AdditionOp < Treetop::Runtime::SyntaxNode
    end

    # Subtraction operator syntax node class
    class SubtractionOp < Treetop::Runtime::SyntaxNode
    end

    # Multiplication operator syntax node class
    class MultiplicationOp < Treetop::Runtime::SyntaxNode
    end

    # Division operator syntax node class
    class DivisionOp < Treetop::Runtime::SyntaxNode
    end
     
  	
    # Loop
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Loop syntax node class
    class Loop < Treetop::Runtime::SyntaxNode
    end
    
    # Conditionals
    #------------------------------------------------------------------------------------------------------------------------------------------------------------------------;
    
    # Conditionals syntax node class
    class Conditional < Treetop::Runtime::SyntaxNode
    end

    # If syntax node class
    class If < Treetop::Runtime::SyntaxNode
    end

    # Else syntax node class
    class Else < Treetop::Runtime::SyntaxNode
    end

    # I/O
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Input command syntax node class
    class Input < Treetop::Runtime::SyntaxNode
    end
    
    # Output command syntax node class
    class Output < Treetop::Runtime::SyntaxNode
    end

    # Concatenated output syntax node class
    class CombinationOutput < Treetop::Runtime::SyntaxNode
    end
    
    # Subroutines
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Subroutine call syntax node class
    class ProcedureCall < Treetop::Runtime::SyntaxNode
    end
    
    # Subroutine syntax node class
    class Subroutine < Treetop::Runtime::SyntaxNode
    end

    # Subroutine parameter syntax node class
    # class SubroutineParam < Treetop::Runtime::SyntaxNode
    # end
  	
    # Statement
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  	
  	# Statement syntax node class
    class Statement < Treetop::Runtime::SyntaxNode
    end

    # Second and beyond statement syntax node class
    class MoreStmt < Treetop::Runtime::SyntaxNode
    end
  	
    # Others
  	#------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    # Begin of program syntax node class
    class Begin < Treetop::Runtime::SyntaxNode
    end

    # Middle of program syntax node class
    class Middle < Treetop::Runtime::SyntaxNode
    end

    # Global variable/function syntax node class
    class Global < Treetop::Runtime::SyntaxNode
    end

    # End of program syntax node class
    class End < Treetop::Runtime::SyntaxNode
    end

    # Body of program syntax node class
    class Body < Treetop::Runtime::SyntaxNode
    end

    # Block program syntax node class
    class Block < Treetop::Runtime::SyntaxNode
    end

end
