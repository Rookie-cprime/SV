/*
字符串文字用引号括起来，有自己的数据类型。
字符串文字必须包含在单行中，除非新行前面紧跟一个\。
非打印字符和其他特殊字符前面加反斜杠。
字符串文本也可以强制转换为压缩数组或未打包数组。
SystemVerilog添加了以下特殊字符串字符。
*/

`timescale 1ns/100ps
module string_literals();
string a;

initial begin
		$display("@ %gns a = %s",$time,a)
		a = "Hello Deepak";
		$display("@ %gns a = %s",$time,a)
		#1 a = "Over writing old string"
		$display("@ %gns a = %s",$time,a)
		#1 a = "This is multi line comment \
				and this is second line";
		$display("@ %gns a = %s",$time,a)
		#1 $finish	
end

endmodule

	
  @ 0ns a =
  @ 0ns a = Hello Deepak
  @ 1ns a = Over writing old string
  @ 2ns a = This is multi line comment
            and this is second line