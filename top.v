module top(
    input [15:0] sw,
    input btnU, btnD, btnL, btnR, btnC,
    output [15:0] led
);
    
    wire [3:0] atob;
    wire [1:0] muxSel;
    assign muxSel = {btnU,btnL};
    wire [1:0] dMuxSel;
    assign dMuxSel = {btnR,btnD};
    
    
    mux m(
    .Enable(btnC),
    .CEO(sw[3:0]),
    .you(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .Sel(muxSel),
    .local_lib(atob)
    );
    
    demux dm(
    .Enable(btnC),
    .In(atob),
    .local_libdemux(led[3:0]),
    .fire_department(led[7:4]),
    .school(led[11:8]),
    .rib_shack(led[15:12]),
    .Sel(dMuxSel)
    );
    
endmodule