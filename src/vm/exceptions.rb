# Returns any stack errors
class StackError < RuntimeError
end

# Returns any returnstack errors
class ReturnStackError < RuntimeError
end

# Returns any operand errors
class OperandError < RuntimeError
end