module xnor_gate_tb;
    reg a,b;
    wire xnor_out;
    xnor_gate uut(.a(a), .b(b), .xnor_out(xnor_out));
    initial
    begin
        $dumpfile("xnor_gate.vcd");
        $dumpvars(0,xnor_gate_tb);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule