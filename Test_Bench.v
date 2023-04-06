`timescale 1ns / 1ps
`define WIDTH 8

module FIFO_Testbench();
    wire full,empty;
    wire [(`WIDTH-1):0]d_out;
    reg clk,rst,rd_en,wr_en;
    reg [(`WIDTH-1):0]d_in;
    
    //Port Mapping by Name
    Synchronous_FIFO DUT(
        .clk(clk),
        .reset(rst),
        .read(rd_en),
        .write(wr_en),
        .data_in(d_in),
        .full(full),
        .empty(empty),
        .data_out(d_out)
    );
    
    initial begin
        clk=0; rst=1; rd_en=0; wr_en=0;
    end
    
    always #5 clk=~clk;
    
    initial begin
      #10 rst=0;
      
      //To write 8 Locations
      #10 wr_en=1; rd_en=0; d_in=8'h07;
      #10 d_in=8'h27; #10 d_in=8'h37;
      #10 d_in=8'h97; #10 d_in=8'h17;
      #10 d_in=8'h77; #10 d_in=8'h67;
      #10 d_in=8'hab;
      //Disconnecting data_in
      #10 wr_en=0;d_in=8'bzzzzzzzz;
      
      //To read 8 Locations
      #20 wr_en=0; rd_en=1; 
      #85 rd_en=0;
      
      #10 $finish;
    end   
endmodule
