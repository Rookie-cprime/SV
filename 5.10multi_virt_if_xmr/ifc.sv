interface X_if (input logic clk);
    logic [7:0] din, dout;
    logic reset_l, load;
    
    clocking cb @(posedge clk);
    output din, load;
    input dout;
    endclocking

    always @cb
      $strobe("@%0d: %m: dout=%0d, din=%0d, load=%0d, reset=%0d", 
              $time, dout, din, load, reset_l);
    
    modport DUT (input clk, din, reset_l, load,
                 output dout);

    modport TB (clocking cb, output reset_l);
endinterface
