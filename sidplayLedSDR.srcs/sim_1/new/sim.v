`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2020 11:40:03 PM
// Design Name: 
// Module Name: sim
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
/*     output cnv,
    input sysclk,
    output clkout,//L3
    input data,
    input adcclk,
    output [15:0]led,
    input switch*/
//////////////////////////////////////////////////////////////////////////////////


module sim();

reg sysclk=0, data=0, adcclk=0, switch=1;
wire cnv, clkout;
wire [15:0] led;

receiveData test(cnv,sysclk,clkout,data,adcclk,led,switch);

always #10 sysclk = ~sysclk;

initial begin
#5005 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;switch = 0;
#100 adcclk = 0; data = 0; switch = 1;


#100 adcclk = 1; data = 1; switch = 1;
#100 adcclk = 0; data = 0;switch = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0; switch = 0;

#100 adcclk = 1; data = 1; switch = 1;
#100 adcclk = 0; data = 0;switch = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0; switch = 1;

#100 adcclk = 1; data = 1; switch = 0;
#100 adcclk = 0; data = 1;switch = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0; switch = 1;

#100 adcclk = 1; data = 1; switch = 0;
#100 adcclk = 0; data = 0;switch = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 1;
#100 adcclk = 1; data = 1;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;
#100 adcclk = 0; data = 0;
#100 adcclk = 1; data = 0;switch = 0;
#100 adcclk = 0; data = 1; switch = 1;
end

endmodule