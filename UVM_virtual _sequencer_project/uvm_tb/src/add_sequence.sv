
class add_sequence extends uvm_sequence#(add_transaction);
  `uvm_object_utils(add_sequence)
  
  add_transaction tr;

  function new(string name = "add_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(5)
      begin
        `uvm_do(tr)
      end
  endtask
  
endclass  

