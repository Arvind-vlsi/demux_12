`timescale 1ns / 1ps

module tb();

reg a=0,sel=0;
wire y1,y2;

demux_12 d1(a,sel,y1,y2);

always #5 a=~a;
always #10 sel=~sel;
initial begin
    #100 $stop;
   end
endmodule
