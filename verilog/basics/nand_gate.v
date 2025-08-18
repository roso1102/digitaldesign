module nand_gate(a,b,nand_out);
    input a,b;
    output nand_out;
    assign nand_out= ~(a&b);
endmodule