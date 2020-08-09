`timescale 1ns / 1ps
module displayData(
    input wire[15:0] data1,
    output wire[15:0]led,
    input cnv,//used to time the led changes
    input once,
    output read
   
    );
//reg readOn;//old
reg [15:0] internal; // register storing led values
always @(posedge cnv) begin//only gets the data everytime cnv goes high aka whenever a cycle has fully run
    if(once == 0) begin//when stich is on set strage register to data values
        internal[15:0] <= data1[15:0];//clocked out on cnv
        
    end else if(once == 1)
        internal[15:0] <= internal[15:0];
        //readOn <= 1;
        //once <= 1;
end
assign led = internal;//works
//assign read = readOn;
endmodule