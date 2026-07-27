`timescale 1ns / 1ps

module Traffic_Light_Controller_Crossroad_Mealy_TB();
    reg clk, rst;
    reg sensor_NS, sensor_EW;
    wire [2:0] light_NS;
    wire [2:0] light_EW;
    
    // Instantiate DUT (Device Under Test)
    Traffic_Light_Controller_Crossroad_Mealy dut (
        .clk(clk),
        .rst(rst),
        .sensor_NS(sensor_NS),
        .sensor_EW(sensor_EW),
        .light_NS(light_NS),
        .light_EW(light_EW)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // 10ns period clock
    end
    
    // Stimulus
    initial begin
        // Initial reset
        rst = 1;
        sensor_NS = 1;
        sensor_EW = 1;
        #10;
        rst = 0;
        
        // Both sides have vehicles
        #100;
        
        // No cars on NS, cars on EW — triggers early switch to EW
        sensor_NS = 0;
        sensor_EW = 1;
        #100;
        
        // No cars on EW, cars on NS — triggers early switch to NS
        sensor_NS = 1;
        sensor_EW = 0;
        #100;
        
        // No cars on either side — controller continues default cycle
        sensor_NS = 0;
        sensor_EW = 0;
        #100;
        
        $finish;
    end
    
    // Monitor output
    initial begin
        $monitor("Time=%0t | NS Lights=%b | EW Lights=%b | NS_Sensor=%b | EW_Sensor=%b | State Counter=%0d",
                  $time, light_NS, light_EW, sensor_NS, sensor_EW, dut.count);
    end
    
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, Traffic_Light_Controller_Crossroad_Mealy_TB);
    end
endmodule
