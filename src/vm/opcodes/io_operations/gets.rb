module CVM
  class VM
    
    @@instruction[GETS] = Proc.new() do |vm|
            
      input = $stdin.gets.chomp("\n")
      
      if !input.to_s.match(/^[-+]?[0-9]+$/).nil?        
        
        vm.data_stack.push([INTEGER_, input])
        
      elsif !input.to_s.match(/[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?/).nil? 
        
        vm.data_stack.push([FLOAT_, input])
      
      elsif !input.to_s.match(/[a-zA-z0-9]|[^a-zA-z0-9]/).nil?
        
        raise OperandError, "Length of char value should be 1 " unless(input.length == 1)
        vm.data_stack.push([CHAR_, input])
      
      else
        
        vm.data_stack.push([STRING_, input])
        
      end
      
      vm.instruction_pointer = vm.instruction_pointer + 1
    
  end
end
end