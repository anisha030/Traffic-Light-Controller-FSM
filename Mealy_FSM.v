module Traffic_Light_Controller_Crossroad_Mealy(
    input clk,
    input rst,
    input sensor_NS,     // vehicle detected on North-South road
    input sensor_EW,     // vehicle detected on East-West road
    output reg [2:0] light_NS,  // {Red, Yellow, Green}
    output reg [2:0] light_EW   // {Red, Yellow, Green}
);
    // State encoding (same as Moore)
    parameter S0 = 3'b000,  // NS Green, EW Red
              S1 = 3'b001,  // NS Yellow, EW Red
              S2 = 3'b010,  // NS Red, EW Green
              S3 = 3'b011;  // NS Red, EW Yellow
    
    // Timing parameters
    parameter T_GREEN  = 5,
              T_YELLOW = 2;
    
    reg [3:0] count;
    reg [2:0] ps, ns;
    
    // ---------- STATE TRANSITION (SEQUENTIAL) ----------
    always @(posedge clk or posedge rst)
    begin
        if (rst) begin
            ps <= S0;
            count <= 0;
        end
        else begin
            if (count == ((ps == S0 || ps == S2) ? T_GREEN : T_YELLOW)) begin
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
            // In Mealy, transitions can also depend on inputs (sensors)
            S0: begin
                // if no car in NS and car waiting in EW → change earlier
                if (!sensor_NS && sensor_EW && count >= (T_GREEN/2))
                    ns = S1;
                else
                    ns = (count == T_GREEN) ? S1 : S0;
            end
            S1: ns = (count == T_YELLOW) ? S2 : S1;
            S2: begin
                // if no car in EW and car waiting in NS → change earlier
                if (!sensor_EW && sensor_NS && count >= (T_GREEN/2))
                    ns = S3;
                else
                    ns = (count == T_GREEN) ? S3 : S2;
            end
            S3: ns = (count == T_YELLOW) ? S0 : S3;
            default: ns = S0;
        endcase
    end
    
    // ---------- OUTPUT LOGIC (MEALY OUTPUTS) ----------
    always @(*)
    begin
        case(ps)
            S0: begin
                light_NS = 3'b001; // Green
                light_EW = 3'b100; // Red
                // Mealy behavior: start yellow early if EW cars waiting and NS empty
                if (!sensor_NS && sensor_EW && count >= (T_GREEN/2))
                    light_NS = 3'b010; // Yellow
            end
            S1: begin
                light_NS = 3'b010; // Yellow
                light_EW = 3'b100; // Red
            end
            S2: begin
                light_NS = 3'b100; // Red
                light_EW = 3'b001; // Green
                // Mealy behavior: start yellow early if NS cars waiting and EW empty
                if (!sensor_EW && sensor_NS && count >= (T_GREEN/2))
                    light_EW = 3'b010; // Yellow
            end
            S3: begin
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
