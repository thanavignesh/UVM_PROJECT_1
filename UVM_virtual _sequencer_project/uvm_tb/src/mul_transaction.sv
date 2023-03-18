class mul_transaction extends uvm_sequence_item;
  `uvm_object_utils(mul_transaction)
  
  rand logic [3:0] mul_in1,mul_in2;
       logic clk, rst;
  logic [7:0] mul_out;
  
  function new(string name = "mul_transaction");
    super.new(name);
  endfunction

endclass : mul_transaction

