`timescale 1ns/1ns
parameter NUM_XI = 2;  // Number of interface instances

module top;
  // Clock generator
  bit clk;
  initial forever #20 clk = !clk;


  X_if xi [NUM_XI] (clk);  // Instantiate N Xi interfaces

  // Generate N DUT instances
  generate
  for (genvar i=0; i<NUM_XI; i++)
    begin : dut
      DUT d (xi[i]);
    end
  endgenerate

  // Instantiate the testbench, overriding the parameter with number of instances
  test tb();

endmodule : top
