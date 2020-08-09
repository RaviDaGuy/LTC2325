`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2020 02:59:05 PM
// Design Name: 
// Module Name: receiveData
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


module receiveData(
    output wire cnvO, //starts conversion edge, ADC acquires on rising, outputs data on falling
    input sysclk,//input from clock IP
    output clkout,//L3, clock for ADC
    input data, //data from adc
    input adcclk,//skew matched clock from adc, used for timing when reading signals, in SDR, falling edge shifts data onto bus
    output [15:0]led, //led outputs to display
    input switch, // switch to pause display on LEDs
    output read,//shows state of switch for debugging purposes
    output dataRead,//shows data so i dont have to hook my probe to data line
    output reg1//shows most recent bit actually put into data register
    );

clk_wiz_0 clock(clkout,sysclk);//clock ip, puts programmable frequency onto clkoutusing 100 MHz system clk (pin W5)
assign read = switch;//puts state of switch to pin
assign dataRead = data;//puts the data ADC sees onto pin, debugging use

integer upcnt = 0;//used to count 16 cylcles
integer dncnt = 0;

reg cnv;//1 or 0 depending on whats happening, follows behavior above
assign cnvO = cnv;//sends conversion signal to ADC

reg[15:0] data_1;//register containing data received

//github test   
// store numbers into display
// also clear module after displayed the result
// also clear module after displayed the result
assign reg1 = data_1[15];//supposed to put most recent bit onto pin for debugging purposes
always @(posedge adcclk)//data is shifter on negedge, at posedge signal has settled and can be read
begin
    if(upcnt > 1) begin // at second positive edge start reading data
        data_1[15:0] <= {data_1[14:0], data};//put most recent bit read to data_1[15]
    end else begin
        data_1[15:0] <= data_1[15:0];//otherwise, simply hold current register values
    end
    upcnt <= upcnt + 1;//increment upcount
    if(upcnt == 18) begin//roll over
        upcnt <= 0;
    end
end

// store numbers into the corresponding reg
always @(negedge adcclk)
begin
    
    if(dncnt == 0) begin//first downcount of the cycle pulls conversion high
        cnv <= 1;
        dncnt <= 0;
        dncnt <= dncnt + 1;
    end else if(dncnt == 2)begin// on the third falling edge, the conversion goes low, increment counter
        dncnt <= dncnt + 1;
        cnv <= 0;
    end else if(dncnt == 18)begin//roll over
        dncnt <= 0;
        cnv <= 0;
    end else begin // catch case
        dncnt <= dncnt + 1;
        cnv <= 0;
    end 
end


displayData display(data_1[15:0],led[15:0],cnvO,switch);//,read);// display data on leds

endmodule