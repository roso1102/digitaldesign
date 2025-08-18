module nand_gate_tb;
    reg a,b;
    wire nand_out;
    nand_gate uut(.a(a),.b(b),.nand_out(nand_out));
    initial
    begin
        $dumpfile("nand_gate.vcd"); // Name of the VCD file
        $dumpvars(0, nand_gate_tb); // Dump all variables in the testbench
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
