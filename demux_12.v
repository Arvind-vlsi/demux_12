`timescale 1ns / 1ps

module demux_12(
    input a,
    input sel,
    output y1,y2
    );
    
    reg yt1=0,yt2=0;
    always@ (*) begin
        if(sel==1'b0)
            yt1=a;
         else
            yt2=a;
      end
  assign y1=yt1;
  assign y2=yt2;
endmodule
