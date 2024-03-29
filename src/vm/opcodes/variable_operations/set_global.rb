module CVM
  class VM
    
    @@instruction[SET_GLOBAL] = Proc.new() do |vm|
      raise StackError, "Expecting at least one item on the data stack" unless(vm.data_stack.length > 0)
      vm.globals[vm.opcodes[vm.instruction_pointer + 1]] = vm.data_stack.pop
      
      vm.instruction_pointer = vm.instruction_pointer + 2
    end
    
  end
end