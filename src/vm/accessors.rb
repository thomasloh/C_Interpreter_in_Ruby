module CVM
  
  # VM is a class responsible for simulating the bytecode
  class VM
  
    # Return data stack
    def data_stack
      return @state[:fiber][:data_stack]
    end
    
    # Set data stack
    def data_stack=(stack)
      @state[:fiber][:data_stack] = stack
    end
    
    # Return value of return stack
    def return_stack
      return @state[:fiber][:return_stack]
    end
    
    # Set return stack
    def return_stack=(stack)
      @state[:fiber][:return_stack] = stack
    end
    
    # Return current instruction pointer
    def instruction_pointer
      return @state[:fiber][:instruction_pointer]
    end
    
    # Set instruction pointer
    def instruction_pointer=(ip)
      @state[:fiber][:instruction_pointer] = ip
    end
    
    # Return opcodes
    def opcodes
      return @state[:opcodes]
    end
    
    # Return local variables
    def locals
      return @state[:fiber][:locals][@state[:fiber][:level]]
    end
    
    # Return global variables
    def globals
      return @state[:globals]
    end
    
    # Increase scope
    def increment_scope
      @state[:fiber][:level] += 1
      @state[:fiber][:locals][@state[:fiber][:level]] = @state[:fiber][:locals][@state[:fiber][:level] - 1].dup
    end
    
    # Decrease scope
    def decrement_scope
      @state[:fiber][:locals].delete_at(@state[:fiber][:level])
      @state[:fiber][:level] -= 1
    end
    
    # Reset scope
    def reload_scope
      @state[:fiber][:locals][@state[:fiber][:level]] = {}
    end
    
    # Return level of fiber
    def level
      return @state[:fiber][:level]
    end
    
    # Set level of fiber
    def level=(level)
      @state[:fiber][:level] = level
    end
  
  end
end