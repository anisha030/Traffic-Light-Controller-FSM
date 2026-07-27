module Traffic_Light_Controller_Crossroad(
    input clk,
    input rst,
    output reg [2:0] light_NS,  // North-South Lights: {Red, Yellow, Green}
    output reg [2:0] light_EW   // East-West Lights: {Red, Yellow, Green}
);
    // State encoding
    parameter S0 = 3'b000,  // NS Green, EW Red
              S1 = 3'b001,  // NS Yellow, EW Red
              S2 = 3'b010,  // NS Red, EW Green
              S3 = 3'b011;  // NS Red, EW Yellow
    
    // Timing parameters (number of clock cycles per state)
    parameter T_GREEN  = 5, 
              T_YELLOW = 2;
    
    reg [3:0] count;   // counter for timing
    reg [2:0] ps, ns;  // present and next state
    
    // ---------- STATE TRANSITION (SEQUENTIAL BLOCK) ----------
    always @(posedge clk or posedge rst)
    begin
        if (rst) begin
            ps <= S0;
            count <= 0;
        end
        else begin
            if (count == ( (ps == S0 || ps == S2) ? T_GREEN : T_YELLOW )) begin
                ps <= ns;
                count <= 0;
            end
            else
                count <= count + 1;
        end
    end
    
    // ---------- NEXT STATE LOGIC (COMBINATIONAL) ----------
    always @(*)
    begin
        case(ps)
            S0: ns = S1;  // NS green → yellow
            S1: ns = S2;  // NS yellow → EW green
            S2: ns = S3;  // EW green → yellow
            S3: ns = S0;  // EW yellow → NS green
            default: ns = S0;
        endcase
    end
    
    // ---------- OUTPUT LOGIC (MOORE OUTPUTS) ----------
    always @(*)
    begin
        case(ps)
            S0: begin  // NS green, EW red
                light_NS = 3'b001; // Green
                light_EW = 3'b100; // Red
            end
            S1: begin  // NS yellow, EW red
                light_NS = 3'b010; // Yellow
                light_EW = 3'b100; // Red
            end
            S2: begin  // NS red, EW green
                light_NS = 3'b100; // Red
                light_EW = 3'b001; // Green
            end
            S3: begin  // NS red, EW yellow
                light_NS = 3'b100; // Red
                light_EW = 3'b010; // Yellow
            end
            default: begin
                light_NS = 3'b100; // Red
                light_EW = 3'b100; // Red
            end
        endcase
    end
endmodule
