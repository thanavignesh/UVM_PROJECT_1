class mul_sequence extends uvm_sequence#(mul_transaction);
  `uvm_object_utils(mul_sequence)
  
  mul_transaction tr;

  function new(string name = "mul_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(5)
      begin
        `uvm_do(tr)
      end
  endtask
  
endclass 

