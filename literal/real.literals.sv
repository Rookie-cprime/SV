`timescale 1ns/100ps

module real_literals();
real a;
shortreal b;

initial begin
	$monitor("@ %gns a = %e b = %e",$time,a,b)
	#1 a = '0;
	#1 b = 1.0e2;
	#1 a = 2e5;
	#1 b = shortreal'(a);
	#1 a = 2.1E-2;
	#1 b = shortreal'(a);
	#1 $finish
	
end

endmodule

	
 @ 0ns a = 0.000000e+00 b = 1.000000e+02
 @ 1ns a = 2.000000e+05 b = 1.000000e+02
 @ 2ns a = 2.000000e+05 b = 2.000000e+05
 @ 3ns a = 2.100000e-02 b = 2.000000e+05
 @ 4ns a = 2.100000e-02 b = 2.100000e-02