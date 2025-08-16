module xor_gate_tb;
    reg a,b;
    wire xor_out;
    xor_gate uut(.a(a), .b(b), .xor_out(xor_out));
    initial
    begin
        $dumpfile("xor_gate.vcd");
        $dumpvars(0,xor_gate_tb);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule