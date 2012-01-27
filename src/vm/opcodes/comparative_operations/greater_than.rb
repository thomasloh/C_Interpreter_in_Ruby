module CVM
  class VM
    
    @@instruction[GREATER_THAN] = Proc.new() do |vm|
      raise StackError, "Expecting at least two items on the data stack" unless(vm.data_stack.length > 1)
      
      if(vm.data_stack[-2][1].class.name == "String")
        vm.data_stack[-2][1] = vm.data_stack[-2][1].to_i; 
      end
      
      if(vm.data_stack[-1][1].class.name == "String")
        vm.data_stack[-1][1] = vm.data_stack[-1][1].to_i; 
      end
      
      
      result = [BOOL_, vm.data_stack[-2][1] > vm.data_stack[-1][1]]
      vm.data_stack.pop
      vm.data_stack.pop
      vm.data_stack.push(result)
      vm.instruction_pointer = vm.instruction_pointer + 1
    end
    
  end
end