/****************************
结构字面值在语法上与C初始值设定项相似。
结构字面值必须具有类型，可以是上下文类型，也可以是强制转换类型。
初始化结构数组时，嵌套大括号应反映数组和结构。
*****************************/

`timscale 1ns/100ps	;
//Type define a struct
typedef struct{
		byte a		;
		reg	 b		;
		shortint unsigned c;
}MyStruct;

module struct_literals();

MyStruct object = '{10,0,100};

MyStruct objectArray [0:1] = '{'{10,0,100},'{11,1,101}};

initial begin
	$display ("a = %b b = %d c = &h",object.a,object.b,object.c);
	object.a = 15;
	$display ("a = %b b = %d c = &h",object.a,object.b,object.c);
	object.c = 16'hDEAD	;
	$display ("a = %b b = %d c = &h",object.a,object.b,object.c);
	$display("Printing array of objects")
	$display ("a = %b b = %d c = &h",objectArray[0].a,objectArray[0].b,objectArray[0].c);
	$display ("a = %b b = %d c = &h",objectArray[1].a,objectArray[1].b,objectArray[1].c);	
	#1 $finish
end

	
 a = 00001010 b = 0 c = 0064
 a = 00001111 b = 0 c = 0064
 a = 00001111 b = 0 c = dead
 Printing array of objects
 a = 00001010 b = 0 c = 0064
 a = 00001011 b = 1 c = 0065