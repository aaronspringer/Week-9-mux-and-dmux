module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib,
    output [3:0] fire_department,
    output [3:0] school,
    output [3:0] rib_shack
);
    assign local_lib = (Enable == 1'b1 ? (Sel == 2'b00 ? In : 0) : 0);
    assign fire_department = (Enable == 1'b1 ? (Sel == 2'b01 ? In : 0) : 0); 
    assign school = (Enable == 1'b1 ? (Sel == 2'b10 ? In : 0) : 0);
    assign rib_shack = (Enable == 1'b1 ? (Sel == 2'b11 ? In : 0) : 0);  
endmodule