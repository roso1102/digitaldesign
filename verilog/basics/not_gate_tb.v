module not_gate_tb;
    reg a;
    wire not_gate;
    not_gate uut(.a(a), .not_out(not_out));
    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0,not_gate_tb);
        a=0; #10;
        a=1; #10;
        $finish;
    end
endmodule