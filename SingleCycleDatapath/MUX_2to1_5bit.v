`timescale 1 ns / 1 ps;
module MUX_2to1_5bit( input1 , input2, select, out );
  input [4:0] input1, input2;
  input select;
  output [4:0]out;
  reg [4:0]out;
  
  always @(input1 or input2 or select )
    begin 
      case(select)
       
          1'b0:   out=input1;
          1'b1:  out=input2;
          
      endcase
    end
 endmodule   