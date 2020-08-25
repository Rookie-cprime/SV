/*
用户定义的类型与其他编程语言中的类型相同，也与C语言中的类型相同。
使用这个，用户可以定义自己的数据类型。
如果类型首先由空typedef标识为类型，则可以在定义之前使用它：
*/

`timescale 1ns/10ps
// Type define a struct
typedef struct{
		byte a	;
		reg b	;
		shortint unsigned c;
}myStruct;

module typedef_data();
// Full typedef here
typedef integer myinteger;
// Typedef declaration without type
typedef myinteger;
// Typedef used here
myinteger a = 10;
myStruct object = '{10,0,100}	;

initial begin
		$display("a = %d",a);
		$display("Displaying object")
		$display ("a = %d,b = %b,c = %h",object.a,object.b,object.c);
		#1 $finish;
end

endmodule

	
 a =          10
 Displaying object
 a = 00001010 b = 0 c = 0064