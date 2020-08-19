/*

数组文字在语法上类似于C初始值设定项，
但允许使用复制运算符（{{}}}）。
与C中的不同，支撑的嵌套必须遵循尺寸的数量。
*/

`timescale 1ns/100ps
module array_literals();

byte a [0:1][0:2] = '{'{0,1,2},'{3{8'h9}}}

initial begin
		$display("a[0][0] = %d",a[0][0]);
		$display("a[0][1] = %d",a[0][1]);
		$display("a[0][2] = %d",a[0][2]);
		$display("a[1][0] = %d",a[1][0]);
		$display("a[1][0] = %d",a[1][1]);
		$display("a[1][0] = %d",a[1][2]);
end

endmodule

	
 a [0][0] = 0
 a [0][1] = 1
 a [0][2] = 2
 a [1][0] = 9
 a [1][1] = 9
 a [1][2] = 9