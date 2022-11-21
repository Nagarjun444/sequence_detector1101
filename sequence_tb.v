`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2022 19:13:05
// Design Name: 
// Module Name: sequence_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sequence_tb();
reg clk;
reg reset;
reg data_in;
wire data_out;

sequence  DUT(clk,reset,data_in,data_out);

initial
  begin
    clk=1;
    forever #5 clk=~clk;
    
  
  end
initial
  begin
   reset <= 1'b1;
   #10000;
   reset <= 1'b0;
   #100;
   data_in<=1'b0;
   #100;
   data_in<=1'b0;
   #100;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b1;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   data_in<=1'b1;#10;
   data_in<=1'b0;#10;
   
   
  #10000; 
  $finish;
  
  
  end


endmodule
