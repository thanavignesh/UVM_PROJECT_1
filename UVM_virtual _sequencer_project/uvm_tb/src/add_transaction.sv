
class add_transaction extends uvm_sequence_item;
  `uvm_object_utils(add_transaction)
  
  rand logic [3:0] add_in1,add_in2;
       logic clk, rst;
       logic [4:0] add_out;
  
  function new(string name = "add_transaction");
    super.new(name);
  endfunction

endclass : add_transaction

