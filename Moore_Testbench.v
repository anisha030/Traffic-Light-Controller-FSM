`timescale 1ns / 1ps

module Traffic_Light_Controller_Crossroad_TB();
    reg clk, rst;
    wire [2:0] light_NS;
    wire [2:0] light_EW;
    
    // Instantiate DUT
    Traffic_Light_Controller_Crossroad dut (
        .clk(clk),
        .rst(rst),
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
        rst = 1;
        #10;
        rst = 0;
        // Run the simulation for several cycles
        #200;
        $finish;
    end
    
    // Monitor output
    initial begin
        $monitor("Time=%0t | NS=%b | EW=%b | State Counter=%0d", 
                  $time, light_NS, light_EW, dut.count);
    end
    
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, Traffic_Light_Controller_Crossroad_TB);
    end
endmodule
