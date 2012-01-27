module CVM
  class VM
    
    @@instruction[PRINT] = Proc.new() do |vm|
      raise StackError, "Expecting at least one item on the data stack" unless(vm.data_stack.length > 0)
      value = vm.data_stack.pop
      
      if value.class.name == "Array"
        value[0] = STRING_
      end
      
      raise StackError, "Expecting topmost stack item to be a string but was #{value.class}" unless(value[0] == STRING_)
      print value[1]
      print "\n"
      vm.instruction_pointer = vm.instruction_pointer + 1
    end
    
  end
end