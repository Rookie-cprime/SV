/************************************
字符串数据类型用于存储字符串，大小是动态的，如下所示。
字符串数据类型随内置方法一起提供。
String

Description

Str1 == Str2

Equality. Checks if the two strings are equal. Result is 1 if they are equal and 0 if they are not. 
Both strings can be of type string. Or one of them can be a string literal. 
If both operands are string literals, the expression is the same Verilog equality operator for integer types. The special value " " is allowed.

Str1 != Str2

Inequality. Logical Negation of ==

<,>,<=,=>

Comparison. 
Relational operators return 1 if the corresponding condition is true using the lexicographical ordering of the two strings Str1 and Str2. 
The comparison behaves like the ANSI C strcmp function (or the compare string method) (with regard to the lexical ordering) and embedded null bytes are included. 
Both operands can be of type string, or one of them can be a string literal.

{Str1,Str2,...,Strn}

Concatenation. Each operand can be of type string or a string literal 
(it shall be implicitly converted to type string). 
If at least one operand is of type string, then the expression evaluates to the concatenated string and is of type string. 
If all the operands are string literals, then the expression behaves like a Verilog concatenation of integral types; 
if the result is then used in an expression involving string types, it is implicitly converted to the string type.

{multiplier{Str}}

Replication. Str can be of type string or a string literal. Multiplier must be of integral type and can be non-constant. 
If multiplier is non-constant or Str is of type string, the result is a string containing N concatenated copies of Str, where N is specified by the multiplier. 
If Str is a literal and the multiplier is constant, the expression behaves like numeric replication in Verilog 
(if the result is used in another expression involving string types, it is implicitly converted to the string type).

Str.method(...)

The dot (.) operator is used to invoke a specified method on strings.

Str[index]

Indexing. Returns a byte, the ASCII code at the given index. 
Indexes range from 0 to N-1, where N is the number of characters in the string. 
If given an index out of range, returns 0.
****************************************/

/************************************
Function

Description

len()

Returns length of string.

putc()

Used to assign one character of string.

getc()

Returns a character.

toupper()

Returns the uppercase of string.

tolower()

Returns the lowercase of string.

compare()

Returns the string compare result .

icompare()

Returns caseless string compare result

substr()

Returns the sub string of main string.

 	 	
space.gif

Function

Description

atoi()

Returns integer value of the decimal represenation in ASCII string.

atohex()

Returns hex value of the hex represenation in ASCII string.

atooct()

Returns octal value of the octal represenation in ASCII string.

atobin()

Returns binary value of the binary represenation in ASCII string.

atoreal()

Returns real value of the real represenation in ASCII string.

itoa()

Stores the ASCII decimal representation of i into str (inverse of atoi).

hextoa()

Stores the ASCII hex representation of i into str (inverse of atohex).

octtoa()

Stores the ASCII octal representation of i into str (inverse of atooct).

bintoa()

Stores the ASCII binary representation of i into str (inverse of atobin).

realtoa()

Stores the ASCII real representation of i into str (inverse of atoreal).
****************************/

module string_ex();

string my_string = "This is a original string"	;
string my_new_string;

initial begin
		$display("My string = %s",my_string);
		// Assign new string of different size
		my_string = "This is new string of different length"	;
		$display("My string = %s",my_string);
		// Change to uppercase and assign to new string
		my_new_string = my_string.toupper();
		$display("My New string = %s",my_new_string);
		// Get the length of sting
		$display("Length of new string %0d",my_new_string.len());
		// Compare variable to another variable
		if(my_string.tolower() == my_new_string.tolower())begin
			$display("String are the same")
		end
		//Compare variable to variable
		if(my_string.toupper() == my_new_string)begin
			$display("String variable compare matches")
		end
		#1 finish
		
end

endmodule

	
 My String = This is a orginal string
 My String = This is new string of different length
 My New String = THIS IS NEW STRING OF DIFFERENT LENGTH
 Length of new string 38
 String Compare matches
 String Variable Compare matches