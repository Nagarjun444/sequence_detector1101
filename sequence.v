`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2022 18:41:00
// Design Name: 
// Module Name: sequence
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


module sequence(clk,reset,data_in,data_out);

input clk;
input reset;
input data_in;
output reg data_out;

parameter IDLE=2'b00;
parameter S0=2'b01;
parameter S1=2'b10;
parameter S2=2'b11;

reg [2:0] state;
reg [2:0] nextstate;

reg [2:0] counter;


always@(posedge clk or negedge reset)
begin
  if(reset)begin
     state<=IDLE;
     counter=1'b0;
     end
   else begin
     state<=nextstate;   
     counter<=counter+1'b1;
     end
end

always@(state,data_in)
begin
case(state)
      IDLE:
           begin
             if(data_in ==0)
                nextstate<=IDLE;
             else
                 nextstate<=S0;
           end
      S0: begin
             if(data_in ==0)
                nextstate<=IDLE;
             else
                 nextstate<=S1;
           end    
       S1: begin
             if(data_in ==0)
                nextstate<=S2;
             else
                 nextstate<=S1;
           end
       S2: begin
             if(data_in ==0)
                nextstate<=IDLE;
             else
                 nextstate<=S0;
           end 
       default:nextstate<=IDLE;       

endcase
end

always@(state)
 begin
 case(state)
    IDLE:data_out=1'b0;
      S0:data_out=1'b0;
      S1:data_out=1'b0;
      S2:data_out=1'b1;
      default data_out=1'b0;
    endcase
 end



endmodule
