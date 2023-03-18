`include "virtual_sequencer.sv"
`include "add_sequence.sv"
`include "mul_sequence.sv"
class top_vseq_base extends uvm_sequence #(uvm_sequence_item);
`uvm_object_utils(top_vseq_base)

   // uvm_sequencer #(add_transaction) GA;
   // uvm_sequencer #(mul_transaction) GM;
  
    vsequencer vseqr;




function new(string name = "top_vseq_base");
  super.new(name);
endfunction
  
  
task body();  
 
  if(!$cast(vseqr, m_sequencer)) begin
    `uvm_error(get_full_name(), "Virtual sequencer pointer cast failed");
  end 
  
  //Handle assignment for virtual sequence's sub-sequencers
//  GA = vseqr.VA;
//  GM = vseqr.VM;
  
  
endtask: body

  
endclass: top_vseq_base


///////////////////////////////////////////////////////////////////////////
      
 class add_gen extends top_vseq_base;
   `uvm_object_utils(add_gen)
   
   
     add_sequence aseq;
   

   function new(string name="add_gen");
        super.new(name);
    endfunction


    virtual task body();
      aseq =  add_sequence::type_id::create("aseq");
      super.body();
      aseq.start(vseqr.VA);
    endtask
  
   
endclass       
      
      
      
/////////////////////////////////////////////////////////////////////////////      
     
 class mul_gen extends top_vseq_base;
   `uvm_object_utils(mul_gen)
   

     mul_sequence mseq;
   

    function new(string name="mul_gen");
        super.new(name);
    endfunction
  

    virtual task body();
      mseq =  mul_sequence::type_id::create("mseq");
      super.body();
      mseq.start(vseqr.VM);
    endtask
   
endclass  

