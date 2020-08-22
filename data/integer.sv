/*************************************************
整数数据类型可分为2状态类型和4状态类型。
2态类型只能取0，1，其中4态类型可以取0，1，X，Z。
与4态类型相比，2态类型消耗更少（50%）的内存，模拟速度更快。
**************************************************/

		

module data_types();

bit       data_1bit;
byte      data_8bit;
shortint  data_16bit;
int       data_32bit;
longint   data_64bit;
integer   data_integer;

bit       unsigned data_1bit_unsigned;
byte      unsigned data_8bit_unsigned;
shortint  unsigned data_16bit_unsigned;
int       unsigned data_32bit_unsigned;
longint   unsigned data_64bit_unsigned;
integer   unsigned data_integer_unsigned;

initial begin
   data_1bit   = {32{4'b1111}};
   data_8bit   = {32{4'b1111}};
   data_16bit  = {32{4'b1111}};
   data_32bit  = {32{4'b1111}};
   data_64bit  = {32{4'b1111}};
   data_integer= {32{4'b1111}};
   $display("data_1bit    = %0d",data_1bit);
   $display("data_8bit    = %0d",data_8bit);
   $display("data_16bit   = %0d",data_16bit);
   $display("data_32bit   = %0d",data_32bit);
   $display("data_64bit   = %0d",data_64bit);
   $display("data_integer = %0d",data_integer);
   data_1bit   = {32{4'bzx01}};
   data_8bit   = {32{4'bzx01}};
   data_16bit  = {32{4'bzx01}};
   data_32bit  = {32{4'bzx01}};
   data_64bit  = {32{4'bzx01}};
   data_integer= {32{4'bzx01}};
   $display("data_1bit    = %b",data_1bit);
   $display("data_8bit    = %b",data_8bit);
   $display("data_16bit   = %b",data_16bit);
   $display("data_32bit   = %b",data_32bit);
   $display("data_64bit   = %b",data_64bit);
   $display("data_integer = %b",data_integer);
   data_1bit_unsigned   = {32{4'b1111}};
   data_8bit_unsigned   = {32{4'b1111}};
   data_16bit_unsigned  = {32{4'b1111}};
   data_32bit_unsigned  = {32{4'b1111}};
   data_64bit_unsigned  = {32{4'b1111}};
   data_integer_unsigned  = {32{4'b1111}};
   $display("data_1bit_unsigned  = %d",data_1bit_unsigned);
   $display("data_8bit_unsigned  = %d",data_8bit_unsigned);
   $display("data_16bit_unsigned = %d",data_16bit_unsigned);
   $display("data_32bit_unsigned = %d",data_32bit_unsigned);
   $display("data_64bit_unsigned = %d",data_64bit_unsigned);
   $display("data_integer_unsigned = %d",data_integer_unsigned);
   data_1bit_unsigned   = {32{4'bzx01}};
   data_8bit_unsigned   = {32{4'bzx01}};
   data_16bit_unsigned  = {32{4'bzx01}};
   data_32bit_unsigned  = {32{4'bzx01}};
   data_64bit_unsigned  = {32{4'bzx01}};
   data_integer_unsigned  = {32{4'bzx01}};
   $display("data_1bit_unsigned  = %b",data_1bit_unsigned);
   $display("data_8bit_unsigned  = %b",data_8bit_unsigned);
   $display("data_16bit_unsigned = %b",data_16bit_unsigned);
   $display("data_32bit_unsigned = %b",data_32bit_unsigned);
   $display("data_64bit_unsigned = %b",data_64bit_unsigned);
   $display("data_integer_unsigned = %b",data_integer_unsigned);
    #1  $finish;
end


		
 data_1bit    = 1
 data_8bit    = -1
 data_16bit   = -1
 data_32bit   = -1
 data_64bit   = -1
 data_integer = -1
 data_1bit    = 1
 data_8bit    = 00010001
 data_16bit   = 0001000100010001
 data_32bit   = 00010001000100010001000100010001
 data_64bit   = 0001000100010001000100010001000
    100010001000100010001000100010001
 data_integer = zx01zx01zx01zx01zx01zx01zx01zx01
 data_1bit_unsigned  = 1
 data_8bit_unsigned  = 255
 data_16bit_unsigned = 65535
 data_32bit_unsigned = 4294967295
 data_64bit_unsigned = 18446744073709551615
 data_integer_unsigned = 4294967295
 data_1bit_unsigned  = 1
 data_8bit_unsigned  = 00010001
 data_16bit_unsigned = 0001000100010001
 data_32bit_unsigned = 00010001000100010001000100010001
 data_64bit_unsigned = 0001000100010001000100010001000
   100010001000100010001000100010001
 data_integer_unsigned = zx01zx01zx01zx01zx01zx01zx01zx01
endmodule











