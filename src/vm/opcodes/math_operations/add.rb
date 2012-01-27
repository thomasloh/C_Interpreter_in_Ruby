module CVM
  class VM
    
    @@instruction[ADD] = Proc.new() do |vm|
      raise StackError, "Expecting at least two items on the data stack" unless(vm.data_stack.length > 1)
      
      # puts vm.data_stack[-2][1]
      # puts vm.data_stack[-2][1].class.name
      # puts "\n"
      
      if vm.data_stack[-2][1].to_s.match(/"([^"\\]|\\.)*"/).nil?
        
        # string
        vm.data_stack[-2][1] += vm.data_stack[-1][1]            
        
      
      elsif !vm.data_stack[-2][1].to_s.match(/^[-+]?[0-9]+$/).nil?        
        
        # integer
        if vm.data_stack[-2][1].class.name == "String"
          vm.data_stack[-2][1] = vm.data_stack[-2][1].to_i
        end
      
        if vm.data_stack[-1][1].class.name == "String"
          vm.data_stack[-1][1] = vm.data_stack[-1][1].to_i
        end
        
        vm.data_stack[-2][1] += vm.data_stack[-1][1]
        
        vm.data_stack[-2][1] = vm.data_stack[-2][1].to_s
        
      elsif !vm.data_stack[-2][1].to_s.match(/[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?/).nil? 
        
        #float
        if vm.data_stack[-2][1].class.name == "String"
          vm.data_stack[-2][1] = vm.data_stack[-2][1].to_f
        end
      
        if vm.data_stack[-1][1].class.name == "String"
          vm.data_stack[-1][1] = vm.data_stack[-1][1].to_f
        end
        
        vm.data_stack[-2][1] += vm.data_stack[-1][1]
        
        vm.data_stack[-2][1] = vm.data_stack[-2][1].to_s
        
        
      end

      vm.data_stack.pop
      vm.data_stack[-1][0] = INTEGER_ if(vm.data_stack[-1][1].is_a?(Integer))
      vm.data_stack[-1][0] = FLOAT_ if(vm.data_stack[-1][1].is_a?(Float))
      vm.instruction_pointer = vm.instruction_pointer + 1
    end
    
  end
end