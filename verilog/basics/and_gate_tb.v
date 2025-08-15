module and_gate_tb;
    reg a, b;
    wire and_out;

    and_gate uut(.a(a), .b(b), .and_out(and_out));

    initial begin
        $dumpfile("and_gate.vcd"); // Name of the VCD file
        $dumpvars(0, and_gate_tb); // Dump all variables in the testbench
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule