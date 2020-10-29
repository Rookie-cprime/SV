`timescale 1ns/1ns
program pd;

    // Class to create unique random values in a range 0:max
    class Randc_Range;
    randc bit [15:0] value;
    int max = 10;  // Maximum possible value

    function new(int max);
    this.max = max;
    endfunction

    constraint c_max {value < max;}
    endclass


    // This creates a random-sized array of unique values
    class UniqueArray;
    int max_size, max_value;
    rand bit [7:0] a[];

    constraint c_size {a.size inside {[1:max_size]};}

//       constraint c_unique{foreach (a[i]) 
//                           foreach (a[j]) 
//                           if (i != j) a[i] != a[j];
//                           }

    function new(int max_size=10, max_value=1);
    this.max_size = max_size;
    if (max_value < max_size)
      this.max_value = max_size;
    else
      this.max_value = max_value;
    endfunction
    
    function void post_randomize;
    Randc_Range rr = new(max_value);
    foreach (a[i])
    begin
      if (!rr.randomize()) $finish;
      a[i] = rr.value;
    end
    endfunction

    function void display;
    $write("Size: %3d:", a.size());
    foreach (a[i]) $write("%4d", a[i]);
    $display;
    endfunction
    endclass

    UniqueArray ua;

    
    initial begin
      ua = new(50);
      
      repeat (10) begin
        if (!ua.randomize()) $finish;
        ua.display;
      end
    end

endprogram : pd
