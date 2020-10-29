//-----------------------------------------------------------------------------
// This confidential and proprietary software may be used only as authorized
// by a licensing agreement from Synopsys Inc. In the event of publication,
// the following notice is applicable:
//
// (C) COPYRIGHT 2006 Chris Spear and Synopsys Inc.  All rights reserved
//
// The entire notice above must be reproduced on all authorized copies.
//-----------------------------------------------------------------------------
// DUT: Simple 8-bit counter with load and active-low reset
//-----------------------------------------------------------------------------

module DUT(X_if.DUT xi);
  logic [7:0] count;
  assign xi.dout = count;
  
  always @(posedge xi.clk or negedge xi.reset_l)
    begin
      if (!xi.reset_l)  count = 0;
      else if (xi.load) count = xi.din;
      else              count++;
    end

endmodule
