//-----------------------------------------------------------------------------
// This confidential and proprietary software may be used only as authorized
// by a licensing agreement from Synopsys Inc. In the event of publication,
// the following notice is applicable:
//
// (C) COPYRIGHT 2006 Chris Spear and Synopsys Inc.  All rights reserved
//
// The entire notice above must be reproduced on all authorized copies.
//-----------------------------------------------------------------------------
// Top level module for multiple interface example using ports
//-----------------------------------------------------------------------------

`timescale 1ns/1ns
parameter NUM_XI = 2;  // Number of instances

module top;
  // Clock generator
  bit clk;
  initial forever #20 clk = !clk;

  X_if xi [NUM_XI] (clk);  // Instantiate N Xi interfaces

  // Generate N DUT instances
  genvar i;
  generate
  for (i=0; i<NUM_XI; i++)
    begin : dut
      DUT d (xi[i]);
    end
  endgenerate

  // Instantiate the testbench, overriding the parameter with number of instances
  test tb(xi);

endmodule : top
