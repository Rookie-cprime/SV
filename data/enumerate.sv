/*
枚举类型与其他编程语言中的枚举类型相同，也与C语言中的枚举类型相同。
枚举数据类型提供了在不使用数据类型或数据值的情况下抽象地声明强类型变量的功能，
并为需要更多定义的设计添加所需的数据类型和值。

也可以使用枚举名称而不是枚举值轻松地引用或显示枚举数据类型。
与typedef不同，枚举类型需要在使用它们之前首先声明。
在没有数据类型声明的情况下，默认数据类型应为int。
*/

module enum_data();

enum integer {IDLE = 0,GNT0 = 1,GNT1 = 2} state;
enum {RED,GREEN,ORANGE} color;
enum {BRONZE=4,SILVER,GOLD} medal;

//a=0,b=7,c=8
enum {a,b=7,c} alphabet;
// Width declaration
enum bit[3:0] {bronze='h1, silver, gold='h5} newMedal;
// Using enum in typedef
typedef enum { red, green, blue, yellow, white, black } Colors;
 
 Colors Lcolors;
 
initial begin
		state = IDLE;
		color = RED;
		medal = BRONZE;
		alphabet = c;
		newMedal = silver;
		Lcolors = yellow;
		$display (" state = %0d", state);
		$display (" color = %s", color.name());
		$display (" medal = %s", medal.name());
		$display (" alphabet = %s", alphabet.name());
		$display (" newMedal = %s", newMedal.name());
		$display (" Lcolors = %s", Lcolors.name());
end

	
  state = 0
  color = RED
  medal = BRONZE
  alphabet = c
  newMedal = silver
  Lcolors = yellow