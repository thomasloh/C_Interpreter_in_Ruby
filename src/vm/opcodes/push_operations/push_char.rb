module CVM
  class VM
   
    
    @@instruction[PUSH_CHAR] = Proc.new() do |vm|
      
      operand = vm.opcodes[vm.instruction_pointer + 1]
      
      raise OperandError, "Expecting char value but got #{operand.inspect} " unless(operand.is_a?(String))
      
      vm.data_stack.push([CHAR_, operand])
      vm.instruction_pointer = vm.instruction_pointer + 2
      
    end
    
  end
end