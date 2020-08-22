/*********************************
事件数据类型与Verilog中的相同，只是略有改进。
在SystemVerilog中，可以将一个事件变量别名为另一个事件变量，
并且SystemVerilog还允许始终触发事件变量。
*********************************/

module events();
//declare a new event called ack
event ack
//declare done as alias to ack
event down = ack
//event variable with no synchronization object
event empty = null

initial begin
		#1 -> ack;
		#1 -> empty;
		#1 -> done	;
		#1 $finish
end

always	@(ack)