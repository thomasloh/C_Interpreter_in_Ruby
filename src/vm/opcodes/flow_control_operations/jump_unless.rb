module CVM
  class VM
    
    @@instruction[JUMP_UNLESS] = Proc.new() do |vm|
      operand = vm.opcodes[vm.instruction_pointer + 1]      
      raise OperandError, "Expecting integer value but got #{operand.inspect}" unless(operand.is_a?(Integer))
      raise StackError, "Expecting at least one item on the data stack" unless(vm.data_stack.length > 0)
      unless(vm.data_stack.pop[1])
        vm.instruction_pointer = vm.instruction_pointer + operand
      else
        vm.instruction_pointer = vm.instruction_pointer + 2
      end
    end
    
  end
end