module nor_gate_tb;
    reg a,b;
    wire nor_out;
    nor_gate uut(.a(a), .b(b), .nor_out(nor_out));
    initial
    begin
        $dumpfile("nor_gate.vcd");
        $dumpvars(0,nor_gate_tb);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule