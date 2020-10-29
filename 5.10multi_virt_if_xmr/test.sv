program automatic test();
    typedef virtual X_if.TB vXi_t;
    vXi_t vxi[NUM_XI];


    class Driver;
    vXi_t xi;
    int id;

    function new(vXi_t xi, int id);
    this.xi = xi;
    this.id = id;
    endfunction

    task reset;
    fork
      begin
        $display("@%0d: %m: Start reset [%0d]", $time, id);
        // Reset the device
        xi.reset_l <= 1;
        xi.cb.load <= 0;
        xi.cb.din <= 0;
        @(xi.cb)
          xi.reset_l <= 0;
        @(xi.cb)
          xi.reset_l <= 1;
        $display("@%0d: %m: End reset [%0d]", $time, id);
      end
    join_none
    endtask

    task load;
    fork
      begin
        $display("@%0d: %m: Start load [%0d]", $time, id);
        ##1 xi.cb.load <= 1;
        xi.cb.din <= id + 10;

        ##1 xi.cb.load <= 0;
        repeat (5) @(xi.cb);
        $display("@%0d: %m: End load [%0d]", $time, id);
      end
    join_none
    endtask

    endclass


    Driver driver[];

    initial begin
      // Connect the local virtual interfaces to the top
      $display("Test.v: There are NUM_XI = %0d interfaces", NUM_XI);
      if (NUM_XI <= 0) $finish;

      driver = new[NUM_XI];

      vxi = top.xi;
      for (int i=0; i<NUM_XI; i++)
        begin
          driver[i] = new(vxi[i], i);
          driver[i].reset;
        end

      foreach (driver[i])
        driver[i].load;

      repeat (10) @(vxi[0].cb);

      $display("@%0d: Test completed", $time);
      $finish;
    end

endprogram
