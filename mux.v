module mux(
    input [1:0] Sel,
    input [3:0] CEO, you, Fred, Jill, 
    input Enable,
    output [3:0] out
);
    assign out = (Sel == 2'b00 && Enable) ? CEO :
                       (Sel == 2'b01 && Enable) ? you :
                       (Sel == 2'b10 && Enable) ? Fred :
                       (Sel == 2'b11 && Enable) ? Jill : 0;
endmodule
